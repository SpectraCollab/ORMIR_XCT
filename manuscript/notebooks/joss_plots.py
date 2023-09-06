import sys
import pandas
import numpy as np
import matplotlib as mpl

from LinearRegression import LinearRegression

from matplotlib import pyplot as plt


def get_thickness_list(csv, ipl=True):
    # Assume CSV files have already been sorted by filename (alphabetically)
    if ipl:
        # We have an IPL generated CSV file
        ipl_csv = pandas.read_csv(csv)
        filenames = ipl_csv["Filename"].values.tolist()
        thickness = ipl_csv["BG Th V3"].values.astype(float).tolist()
    else:
        # We have a Python generated CSV file
        py_csv = pandas.read_csv(csv)
        filenames = py_csv["Filename"].values.tolist()
        thickness = py_csv["main_th"].values.astype(float).tolist()

    return thickness, filenames


def get_bmd_list(csv):
    csv = pandas.read_csv(csv)
    filenames = csv["Filename"].values.tolist()
    mcp2_dst_bmd = csv["MCP2 DST Mean BMD (mgHA/ccm)"].values.astype(float).tolist()
    mcp2_prx_bmd = csv["MCP2 PRX Mean BMD (mgHA/ccm)"].values.astype(float).tolist()
    mcp3_dst_bmd = csv["MCP3 DST Mean BMD (mgHA/ccm)"].values.astype(float).tolist()
    mcp3_prx_bmd = csv["MCP3 PRX Mean BMD (mgHA/ccm)"].values.astype(float).tolist()

    bmd_dict = {
        "Filenames": filenames,
        "MCP2_DST_BMD": mcp2_dst_bmd,
        "MCP2_PRX_BMD": mcp2_prx_bmd,
        "MCP3_DST_BMD": mcp3_dst_bmd,
        "MCP3_PRX_BMD": mcp3_prx_bmd,
    }

    return bmd_dict


def bmd_plots(bmd_files):
    fig = plt.figure(constrained_layout=True, figsize=(20, 10))
    fig.suptitle(
        "Bone Mineral Density (BMD) - IPL vs. ORMIR_XCT",
        fontsize="xx-large",
    )

    subfigs = fig.subfigures(nrows=2, ncols=1)
    subfigs[0].suptitle(
        "Bland-Altman Plots of BMD - IPL vs. ORMIR_XCT", fontsize="x-large"
    )
    subfigs[1].suptitle(
        "Linear Regression Plots of BMD - IPL vs. ORMIR_XCT", fontsize="x-large"
    )

    axs1 = subfigs[0].subplots(nrows=1, ncols=4)
    axs2 = subfigs[1].subplots(nrows=1, ncols=4)

    ipl_bmd_dict = get_bmd_list(bmd_files["IPL"])
    py_bmd_dict = get_bmd_list(bmd_files["PY"])

    bmd = (
        (ipl_bmd_dict["MCP2_DST_BMD"], py_bmd_dict["MCP2_DST_BMD"]),
        (ipl_bmd_dict["MCP2_PRX_BMD"], py_bmd_dict["MCP2_PRX_BMD"]),
        (ipl_bmd_dict["MCP3_DST_BMD"], py_bmd_dict["MCP3_DST_BMD"]),
        (ipl_bmd_dict["MCP3_PRX_BMD"], py_bmd_dict["MCP3_PRX_BMD"]),
    )

    subplot = 0

    for bmd_list in bmd:
        bmd_ipl = bmd_list[0]
        bmd_py = bmd_list[1]

        bmd_ipl = np.array([bmd_ipl]).T
        bmd_py = np.array([bmd_py]).T

        diff = np.subtract(bmd_ipl, bmd_py)
        mean = np.mean([bmd_ipl, bmd_py], axis=0)
        sd = np.std(diff, axis=0)
        md = np.mean(diff)

        axs1[subplot].scatter(mean, diff, color="blue", marker=".")
        axs1[subplot].axhline(md, color="black", linestyle="-", label="MeanDiff")
        axs1[subplot].axhline(
            md + 1.96 * sd, color="red", linestyle="--", label="MeanDiff +/- 1.96 * sd"
        )
        axs1[subplot].axhline(md - 1.96 * sd, color="red", linestyle="--")
        axs1[subplot].grid()
        axs1[subplot].set_title(list(ipl_bmd_dict.keys())[subplot + 1])
        axs1[subplot].set_xlabel("Mean BMD (mg HA/cm^3)")

        max_thickness = max(np.max(bmd_ipl), np.max(bmd_py))
        regression = LinearRegression()
        regression.fit_model(bmd_ipl, bmd_py, max_thickness)
        model_r_sq = float(regression.get_r_sq())
        model_slope = float(regression.get_slope())
        model_intercept = float(regression.get_intercept())
        x_new = regression.get_x_new()
        y_new = regression.get_y_new()

        axs2[subplot].scatter(bmd_ipl, bmd_py, color="blue", marker=".")
        axs2[subplot].plot(
            x_new,
            y_new,
            color="k",
            linestyle="-",
            label="y={:.2f}x+{:.2f}\nR^2={:.2f}".format(
                model_slope, model_intercept, model_r_sq
            ),
        )
        axs2[subplot].set_title(list(ipl_bmd_dict.keys())[subplot + 1])
        axs2[subplot].set_xlabel("IPL Calculated BMD (mg HA/cm^3)")
        axs2[subplot].grid()
        axs2[subplot].legend(loc="lower right")

        if subplot == 0:
            axs1[subplot].set_ylabel("Difference (IPL - ORMIR_XCT) (mg HA/cm^3)")
            axs2[subplot].set_ylabel("ORMIR_XCT Calculated BMD (mg HA/cm^3)")
        elif subplot == 3:
            axs1[subplot].legend(loc="lower right")

        subplot += 1

    plt.show()


def thickness_plots(thickness_files):
    fig = plt.figure(constrained_layout=True, figsize=(20, 10))
    fig.suptitle(
        "Mean Thickness - IPL vs. ORMIR_XCT (Oversampling=True, Skeletonization=True)",
        fontsize="xx-large",
    )

    subfigs = fig.subfigures(nrows=2, ncols=1)
    subfigs[0].suptitle(
        "Bland-Altman Plots of Mean Thickness - IPL vs. ORMIR_XCT", fontsize="x-large"
    )
    subfigs[1].suptitle(
        "Linear Regression Plots of Mean Thickness - IPL vs. ORMIR_XCT",
        fontsize="x-large",
    )

    axs1 = subfigs[0].subplots(nrows=1, ncols=5)
    axs2 = subfigs[1].subplots(nrows=1, ncols=5)

    subplot = 0

    for file_name in thickness_files:
        print(f"Processing data for {file_name}")

        thickness_ipl, filename_ipl = get_thickness_list(
            thickness_files[file_name]["IPL"], ipl=True
        )
        thickness_py, filename_py = get_thickness_list(
            thickness_files[file_name]["PY"], ipl=False
        )

        thickness_ipl = np.array([thickness_ipl]).T
        thickness_py = np.array([thickness_py]).T

        diff = np.subtract(thickness_ipl, thickness_py)
        mean = np.mean([thickness_ipl, thickness_py], axis=0)
        sd = np.std(diff, axis=0)
        md = np.mean(diff)

        axs1[subplot].scatter(mean, diff, color="blue", marker=".")
        axs1[subplot].axhline(md, color="black", linestyle="-", label="MeanDiff")
        axs1[subplot].axhline(
            md + 1.96 * sd, color="red", linestyle="--", label="MeanDiff +/- 1.96 * sd"
        )
        axs1[subplot].axhline(md - 1.96 * sd, color="red", linestyle="--")
        axs1[subplot].grid()
        axs1[subplot].set_title(file_name)
        axs1[subplot].set_xlabel("Mean (IPL, ORMIR_XCT)")

        max_thickness = max(np.max(thickness_ipl), np.max(thickness_py))
        regression = LinearRegression()
        regression.fit_model(thickness_ipl, thickness_py, max_thickness)
        model_r_sq = float(regression.get_r_sq())
        model_slope = float(regression.get_slope())
        model_intercept = float(regression.get_intercept())
        x_new = regression.get_x_new()
        y_new = regression.get_y_new()

        axs2[subplot].scatter(thickness_ipl, thickness_py, color="blue", marker=".")
        axs2[subplot].plot(
            x_new,
            y_new,
            color="k",
            linestyle="-",
            label="y={:.2f}x+{:.2f}\nR^2={:.2f}".format(
                model_slope, model_intercept, model_r_sq
            ),
        )
        axs2[subplot].plot(
            (0, max_thickness), (0, max_thickness), color="red", linestyle="--"
        )
        axs2[subplot].set_title(file_name)
        axs2[subplot].set_xlabel("IPL Calculated Thickness")
        axs2[subplot].grid()
        axs2[subplot].legend(loc="lower right")

        if subplot == 0:
            axs1[subplot].set_ylabel("Difference (IPL - ORMIR_XCT)")
            axs2[subplot].set_ylabel("ORMIR_XCT Calculated Thickness")
        elif subplot == 4:
            axs1[subplot].legend(loc="lower right")

        subplot += 1

    plt.show()
