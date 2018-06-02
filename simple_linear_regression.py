# -*- coding:utf-8 -*-
"""
@project = 0602-1
@file = simple_linear_regression
@author = Liangjisheng
@create_time = 2018/6/2 0002 下午 17:16
"""
import matplotlib.pyplot as plt
import numpy as np
from sklearn import datasets, linear_model

# 加载用于回归模型的数据集
# 这个数据集中一共有442个样本，特征向量维度为10
# 特征向量每个变量为实数，变化范围（-.2 ，.2）
# 目标输出为实数，变化范围 （25 ，346）
diabetes = datasets.load_diabetes()

# 查看数据集的基本信息
print(type(diabetes))
print(diabetes.data.shape)
print(diabetes.data.dtype)
print(diabetes.target.shape)
print(diabetes.target.dtype)

# 为了便于画图显示
# 仅仅使用一维数据作为训练用的X
# 这里使用np.newaxis的目的是让行向量变成列向量
# 这样diabetes_X每一项都代表一个样本
diabetes_X = diabetes.data[:, np.newaxis, 2]

# 此时diabetes_X的shape是(442L, 1L)
# 如果上面一行代码是：diabetes_X = diabetes.data[:, 2]
# 则diabetes_X的shape是(442L，)，是一个行向量
print(diabetes_X.shape)
print(type(diabetes_X))

# 人工将输入数据划分为训练集和测试集
# 前400个样本作为训练用，后20个样本作为测试用
diabetes_X_train = diabetes_X[:-20]
diabetes_X_test = diabetes_X[-20:]
diabetes_y_train = diabetes.target[:-20]
diabetes_y_test = diabetes.target[-20:]

# 初始化一个线性回归模型
regr = linear_model.LinearRegression()

# 基于训练数据，对线性回归模型进行训练
regr.fit(diabetes_X_train, diabetes_y_train)

# 模型的参数
print('模型参数:', regr.coef_)
print('模型截距:', regr.intercept_)

# 模型在测试集上的均方差（mean square error）
print('测试集上的均方差: %.2f'
      % np.mean((regr.predict(diabetes_X_test) - diabetes_y_test) ** 2))
# 模型在测试集上的得分，得分结果在0到1之间，数值越大，说明模型越好
print('模型得分: %.2f' % regr.score(diabetes_X_test, diabetes_y_test))

# 绘制模型在测试集上的效果
plt.scatter(diabetes_X_test, diabetes_y_test, color='black')
plt.plot(diabetes_X_test, regr.predict(diabetes_X_test), color='blue', linewidth=3)

plt.grid()
plt.show()
