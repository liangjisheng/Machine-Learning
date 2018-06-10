# -*- coding:utf-8 -*-
"""
@project = 0606-1
@file = decision tree
@author = Liangjisheng
@create_time = 2018/6/8 0008 下午 14:46
"""
# 实现的CART算法
import numpy as np
import scipy as sp
import pylab as py

# 计算一组数据的基尼指数
def pGini(y):
    ty = y.reshape(-1, ).tolist()
    label = set(ty)
    sum = 0
    num_case = y.shape[0]
    # print(y)
    for i in label:
        sum += (np.count_nonzero(y == i) / num_case) ** 2

    return 1 - sum

# Decision Tree Classify
class DTC:
    def __init__(self, X, y, property=None):
        """
        this is the class of Dicision Tree
        X is a N*M array where M stands for the training case number
        N is the number of features
        y is a M length vector
        property is a binary vector of size N
        property[i] == 0 means the i-th features is discrete feature,
        otherwise it's continuous in default, all features is discrete
        """

        """
        I meet some problem here,because the ndarry can only have one type
        so If your X have some string parameter,all thing will translate 
        to string in this situation,you can't have continuous parameter
        so remember: if you have continous parameter,DON'T PUT any STRING IN X  !!!!!!!!
        """

        self.X = np.array(X)
        self.y = np.array(y)
        self.feature_dict = {}
        self.label, self.y = np.unique(y, return_inverse=True)
        self.DT = list()

        # property表示样本的特征是否是连续变量,0:离散变量, 1:连续变量
        if property is None:
            self.property = np.zeros((self.X.shape[1], 1))
        else:
            self.property = property

        for i in range(self.X.shape[1]):
            self.feature_dict.setdefault(i)
            self.feature_dict[i] = np.unique(X[:, i])

        if X.shape[0] != y.shape[0]:
            print('the shape of X and y is not right')

        # for i in range(self.X.shape[1]):
            # for j in self.feature_dict[i]:
                # print(self.Gini(X, y, i, j))

    # 根据X矩阵的第k列(特征)的某个值，将第k列分割成2部分，计算在第k个特征的
    # 条件下，y的基尼指数
    def Gini(self, X, y, k, k_v):
        if self.property[k] == 0:
            # print(X[X[:, k] ], dasasdasdasd)
            # print(X[:, k] != k_v)
            c1 = (X[X[:, k] == k_v]).shape[0]
            c2 = (X[X[:, k] != k_v]).shape[0]
            D = y.shape[0]
            return (c1 * pGini(y[X[:, k] == k_v]) / D +
                    c2 * pGini(y[X[:, k] != k_v]) / D)
        else:
            c1 = (X[X[:, k] >= k_v]).shape[0]
            c2 = (X[X[:, k] < k_v]).shape[0]
            D = y.shape[0]
            # print(c1, c2, D)
            return (c1 * pGini(y[X[:, k] >= k_v])/D +
                    c2 * pGini(y[X[:, k] < k_v])/D)

        pass

    def makeTree(self, X, y):
        min = 10000.0
        m_i, m_j = 0, 0

        # 所有实例属于同一类，将tree置为单节点数
        if np.unique(y).size <= 1:
            return self.label[y[0]]

        # 在所有可能的特征以及他们所有可能的切分点中，选择基尼指数最小
        # 的特征，及其对应的切分点作为最优特征与最优切分点
        for i in range(self.X.shape[1]):
            for j in self.feature_dict[i]:
                p = self.Gini(X, y, i, j)
                if p < min:
                    min = p
                    m_i, m_j = i, j

        # 这个if好像没走过
        if abs(min - 1) < 0.01:
            return y[0]

        left = []
        right = []
        if self.property[m_i] == 0:
            left = self.makeTree(X[X[:, m_i] == m_j], y[X[:, m_i] == m_j])
            right = self.makeTree(X[X[:, m_i] != m_j], y[X[:, m_i] != m_j])
        else:
            left = self.makeTree(X[X[:, m_i] >= m_j], y[X[:, m_i] >= m_j])
            right = self.makeTree(X[X[:, m_i] < m_j], y[X[:, m_i] < m_j])

        return [(m_i, m_j), left, right]

    def train(self):
        self.DT = self.makeTree(self.X, self.y)
        print(self.DT)

    def pred(self, X):
        X = np.array(X)
        result = np.zeros((X.shape[0], 1))
        for i in range(X.shape[0]):
            tp = self.DT
            while type(tp) is list:
                a, b = tp[0]
                if self.property[a] == 0:
                    if X[i][a] == b:
                        tp = tp[1]
                    else:
                        tp = tp[2]
                else:
                    if X[i][a] >= b:
                        tp = tp[1]
                    else:
                        tp = tp[2]

            result[i] = self.label[tp]

        return result


X = np.array([
    [0, 0, 0, 0, 8],
    [0, 0, 0, 1, 3.5],
    [0, 1, 0, 1, 3.5],
    [0, 1, 1, 0, 3.5],
    [0, 0, 0, 0, 3.5],
    [1, 0, 0, 0, 3.5],
    [1, 0, 0, 1, 3.5],
    [1, 1, 1, 1, 2],
    [1, 0, 1, 2, 3.5],
    [1, 0, 1, 2, 3.5],
    [2, 0, 1, 2, 3.5],
    [2, 0, 1, 1, 3.5],
    [2, 1, 0, 1, 3.5],
    [2, 1, 0, 2, 3.5],
    [2, 0, 0, 0, 10]
])

y = np.array([
    [1],
    [0],
    [1],
    [1],
    [0],
    [0],
    [0],
    [1],
    [1],
    [1],
    [1],
    [1],
    [1],
    [1],
    [1]
])

prop = np.zeros((5, 1))
prop[4] = 1     # 注意第四个参数(特征)是连续变量
# print('prop:', prop)
print('X.shape:', X.shape)
print('y.shape:', y.shape)

a = DTC(X, y, prop)
# 生成的决策树: decision tree.png
# [(2, 0.0), [(0, 2.0), 1, [(1, 0.0), [(4, 8.0), 1, 0], 1]], 1]
a.train()
print(a.pred([[0, 0, 0, 0, 3.0], [2, 1, 0, 1, 2]]))     # 预测
