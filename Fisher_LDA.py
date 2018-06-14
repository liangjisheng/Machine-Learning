# -*- coding:utf-8 -*-
"""
@project = 0612-1
@file = Fisher_LDA
@author = Liangjisheng
@create_time = 2018/6/14 0014 下午 16:05
"""
# 线性判别式分析数据降维示例
import numpy as np
import matplotlib.pyplot as plt
from sklearn import datasets
from sklearn.discriminant_analysis import LinearDiscriminantAnalysis

# 读取iris数据，
# 这个数据的特征维度为4维
# 样本的类别有三中
iris = datasets.load_iris()
X = iris.data
y = iris.target
target_names = iris.target_names
# print(target_names)  # ['setosa' 'versicolor' 'virginica']

# print(X.shape)  # (150, 4)
# print(y.shape)  # (150,)
# print(y)

# 将数据的特征维度降为一维
# 当然这里可以将n_components设置为任何小于原始特征维度的数目
lda = LinearDiscriminantAnalysis(n_components=1)
X_r2 = lda.fit(X, y).transform(X)
X_Zero = np.zeros(X_r2.shape)
# print(X_r2.shape)   # (150, 1)
# print(X_r2)

for c, i, target_name in zip('ryb', [0, 1, 2], target_names):
    plt.scatter(X_r2[y == i], X_Zero[y == i], c=c, label=target_name)
plt.grid()
plt.legend()
plt.show()

# 这里是将iris数据集的4维特征，转换成了一维的特征，可以看出，转换之后的特征任然
# 有很强的分类能力，这就是LDA的数据降维能力
