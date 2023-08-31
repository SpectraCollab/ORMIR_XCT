import numpy as np
from sklearn.linear_model import LinearRegression as sklearnLinearRegression

class LinearRegression:
    def __init__(self):
        self.model = None
        self.slope = 0
        self.intercept = 0
        self.r_sq = 0
        self.x_new = None
        self.y_new = None

    def get_model(self):
        return self.model

    def get_slope(self):
        return self.slope

    def get_intercept(self):
        return self.intercept

    def get_r_sq(self):
        return self.r_sq

    def get_x_new(self):
        return self.x_new

    def get_y_new(self):
        return self.y_new

    def fit_model(self, x_values, y_values, max_thickness):
        self.model = sklearnLinearRegression()
        self.model.fit(x_values, y_values)
        self.r_sq = self.model.score(x_values, y_values)
        self.intercept = self.model.intercept_
        self.slope = self.model.coef_

        self.x_new = np.linspace(0, max_thickness, 1000)
        self.y_new = self.model.predict(self.x_new[:, np.newaxis])