# -*- coding:utf-8 -*-
"""
@project = 0603-1
@file = gradient_descent
@author = Liangjisheng
@create_time = 2018/6/3 0003 下午 20:33
"""
# 原函数
def f(x):
    return x ** 2 / 2 - 2 * x

# 导函数
def g(x):
    return x - 2

# x_start:初始位置值, p:步长, e:阈值, n:迭代次数
def gd(x_start=0.0, p=0.5, e=0.1, n=10000):
    x = x_start
    for i in range(n):
        grad = g(x)     # 梯度(一元函数就是导数)
        print('times = {0}, grad = {1}, x = {2}, y = {3}'.format(i, grad, x, f(x)))
        if abs(grad) < e:
            break       # 退出迭代
        x -= grad * p

    return x


if __name__ == '__main__':
    gd(-10, 0.5, 0.1, 30)
    print()
    gd()
