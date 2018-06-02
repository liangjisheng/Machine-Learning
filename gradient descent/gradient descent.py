# -*- coding:utf-8 -*-
"""
@project = 0601-1
@file = gradient descent
@author = Liangjisheng
@create_time = 2018/6/1 0001 下午 15:24
"""
# Year X=[2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013]
# Price Y=[2.000,2.500,2.900,3.147,4.515,4.903,5.365,5.704,6.853,7.971,8.561,10.000,11.280,12.900]

import numpy as np

def getdata():
    X = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
    Y = [2.000, 2.500, 2.900, 3.147, 4.515, 4.903, 5.365, 5.704, 6.853, 7.971, 8.561, 10.000, 11.280, 12.900]
    points = np.array((X, Y)).T
    return points

def errors(w, b, points):
    totalError = 0
    for i in range(0, len(points)):
        x = points[i, 0]
        y = points[i, 1]
        totalError += (y - (w * x + b)) ** 2
    return totalError

def step_gradient(b_current, w_current, points, alpha):
    b_gradient = 0
    w_gradient = 0
    # N = float(len(points))

    for i in range(0, len(points)):
        x = points[i, 0]
        y = points[i, 1]
        # b_gradient相当于theta0, w_gradient相当于theta1
        b_gradient += (w_current * x + b_current - y) * 1
        w_gradient += (w_current * x + b_current - y) * x

    new_b = b_current - (alpha * b_gradient)
    new_w = w_current - (alpha * w_gradient)

    return [new_b, new_w]

def gradient_descent_runner(points, starting_b, starting_w, alpha, max_iterations):
    b = starting_b
    w = starting_w
    display = 15000
    count = 1
    lasterror = 0

    for i in range(max_iterations):
        b, w = step_gradient(b, w, points, alpha)

        # 输出在迭代到多少次的时候第一次达到要求的精度
        # if np.abs(errors(w, b, points) - lasterror) < 0.00000001:
            # print(i)

        # 这样写的话，在第一次到达精度要求时，会继续迭代，因为第一次达到要求时有可能
        # 是偶然的因素导致的，当迭代了很多次之后，都满足精度要求时，可认为找到均方误差
        # 函数的最小值
        if i % display == 0:
            print(errors(w, b, points), '\titerations:', i)
            count += 1
            if count % 2 == 0:
                lasterror = errors(w, b, points)
            elif count % 2 != 0 and np.abs(errors(w, b, points) - lasterror) < 0.00000001:
                break

    return [b, w]

def run():
    points = getdata()
    alpha = 0.00001
    initial_b = 0
    initial_w = 0
    max_iterations = 100000000
    params = gradient_descent_runner(points, initial_b, initial_w, alpha, max_iterations)
    return params


if __name__ == '__main__':
    params = run()
    res = params[1] * 14 + params[0]
    print('预测结果: ', res)
