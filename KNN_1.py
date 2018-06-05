# -*- coding:utf-8 -*-
"""
@project = 0604-1
@file = KNN_1
@author = Liangjisheng
@create_time = 2018/6/4 0004 下午 19:11
"""
import numpy as np
import operator
from os import listdir


# 创建简单的数据集和标签
def createDataset():
    group = np.array([[1.0, 1.1], [1.0, 1.0], [0, 0], [0, 0.1]])
    labels = ['A', 'A', 'B', 'B']
    return group, labels

# 输入参数：待分类向量、样本集、标签、k
def classify(inX, dataset, labels, k):
    # 样本集中样本个数
    dataSetsSize = dataset.shape[0]
    # 待分类向量构成样本集同形式(方便计算),做差
    diffMat = np.tile(inX, (dataSetsSize, 1)) - dataset
    # print(diffMat)
    # print(np.tile(inX, (dataSetsSize, 1)))
    sqDiffMat = diffMat ** 2
    sqDistances = sqDiffMat.sum(axis=1)
    distances = sqDistances ** 0.5

    # 距离排序(升序)
    sortedDistIndicies = distances.argsort()
    # print(distances)
    # print(sortedDistIndicies)

    # 字典,用于存储类别及其出现次数
    classCount = {}
    for i in range(k):
        # 前k个类别标签
        voteIlabel = labels[sortedDistIndicies[i]]
        # 对应类别标签加1
        classCount[voteIlabel] = classCount.get(voteIlabel, 0) + 1

    # 降序排列,对classCount第二个元素排序
    sortedClassCount = sorted(classCount.items(), key=operator.itemgetter(1))
    # print(classCount)
    # print(sortedClassCount)

    # 返回排名第一的类别
    return sortedClassCount[0][0]


if __name__ == '__main__':
    dataset, labels = createDataset()
    # print(dataset)
    # print(labels)
    dest_label = classify(np.array([0, 0]), dataset, labels, 1)
    print(dest_label)
