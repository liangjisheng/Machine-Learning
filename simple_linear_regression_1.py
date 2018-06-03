# -*- coding:utf-8 -*-
"""
@project = 0603-1
@file = simple_linear_regression
@author = Liangjisheng
@create_time = 2018/6/3 0003 下午 17:25
"""
import numpy as np

# size of the points dataset
m = 20

# points x-coordinate and dummy value (x0, x1)
X0 = np.ones((m, 1))
X1 = np.arange(1, m + 1).reshape(m, 1)
X = np.hstack((X0, X1))

# points y-coordinate
y = np.array([
    3, 4, 5, 5, 2, 4, 7, 8, 11, 8, 12,
    11, 13, 13, 16, 17, 18, 17, 19, 21
]).reshape(m, 1)

# the learning Rate alpha
alpha = 0.01

def error_function(theta, X, y):
    """Error function J definition"""
    diff = np.dot(X, theta) - y
    return (1. / 2 * m) * np.dot(np.transpose(diff), diff)

def gradient_function(theta, X, y):
    """Gradient fo the functino J definition"""
    diff = np.dot(X, theta) - y
    return (1. / m) * np.dot(np.transpose(X), diff)

def gradient_descent(X, y, alpha):
    """Perform gradient descent"""
    theta = np.array([1, 1]).reshape(2, 1)
    gradient = gradient_function(theta, X, y)
    while not np.all(np.absolute(gradient) <= 1e-5):
        theta = theta - alpha * gradient
        gradient = gradient_function(theta, X, y)
    return theta


if __name__ == '__main__':
    optimal = gradient_descent(X, y, alpha)
    print('optimal:', optimal)
    print('error function:', error_function(optimal, X, y)[0, 0])
