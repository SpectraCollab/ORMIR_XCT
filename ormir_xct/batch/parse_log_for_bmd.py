import os
import re
import argparse
import datetime

from csv import writer


def get_bmd_for_txt(log_file):
    mean_bmd = 0
    std_bmd = 0

    with open(log_file, "r", encoding="ISO-8859-1") as log:
        lines = log.readlines()
        for line in lines:
            if re.search(r"!% mean_unit", line):
                mean_bmd = float(re.findall("\d+\.\d+", line)[0])
            elif re.search(r"!% mean_sd", line):
                std_bmd = float(re.findall("\d+\.\d+", line)[0])

    return mean_bmd, std_bmd


def main(directory):
    # Loop through all log files and save BMD values to CSV
    output_csv = os.path.join(directory, "bmd_ipl.csv")
    csv_line = [
        "Filename",
        "Process Date",
        "MCP2 DST Mean BMD (mgHA/ccm)",
        "MCP2 DST Std BMD (mgHA/ccm)",
        "MCP2 PRX Mean BMD (mgHA/ccm)",
        "MCP2 PRX Std BMD (mgHA/ccm)",
        "MCP3 DST Mean BMD (mgHA/ccm)",
        "MCP3 DST Std BMD (mgHA/ccm)",
        "MCP3 PRX Mean BMD (mgHA/ccm)",
        "MCP3 PRX Std BMD (mgHA/ccm)",
    ]

    with open(output_csv, "a") as f_object:
        writer_object = writer(f_object)
        writer_object.writerow(csv_line)
        f_object.close()

    for file in os.listdir(directory):
        if not (".log" in file.lower()):
            continue
        if not ("mcp2_dst" in file.lower()):
            continue

        # MCP2 DST
        print("Parsing: " + file)
        filename = os.path.join(directory, file)
        mean, std = get_bmd_for_txt(filename)
        csv_line = [file[0:9], datetime.datetime.now(), mean, std]

        # MCP2 PRX
        file = file[0:12] + "_MCP2_PRX_MASK_BMD.LOG"
        print("Parsing: " + file)
        filename = os.path.join(directory, file)
        mean, std = get_bmd_for_txt(filename)
        csv_line.append(mean)
        csv_line.append(std)

        # MCP3 DST
        file = file[0:12] + "_MCP3_DST_MASK_BMD.LOG"
        print("Parsing: " + file)
        filename = os.path.join(directory, file)
        mean, std = get_bmd_for_txt(filename)
        csv_line.append(mean)
        csv_line.append(std)

        # MCP3 PRX
        file = file[0:12] + "_MCP3_PRX_MASK_BMD.LOG"
        print("Parsing: " + file)
        filename = os.path.join(directory, file)
        mean, std = get_bmd_for_txt(filename)
        csv_line.append(mean)
        csv_line.append(std)

        with open(output_csv, "a") as f_object:
            writer_object = writer(f_object)
            writer_object.writerow(csv_line)
            f_object.close()


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "input_dir",
        type=str,
        help="Input directory of log files",
    )
    args = parser.parse_args()

    input_dir = args.input_dir

    main(input_dir)
