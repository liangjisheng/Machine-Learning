# -*- coding:utf-8 -*-
"""
@project = 0606-1
@file = decision tree_CART_1
@author = Liangjisheng
@create_time = 2018/6/10 0010 上午 10:22
@https://blog.csdn.net/herosofearth/article/details/52425952
"""
import operator
import copy

# Ck是D中属于第k类的样本子集，K是类的个数
def calcGini(dataSet):
    """
    计算基尼指数
    :param dataSet:数据集
    :return: 计算结果
    """
    numEntries = len(dataSet)
    labelCounts = {}
    for featVec in dataSet:     # 遍历每个实例，统计标签的频数
        currentLabel = featVec[-1]
        if currentLabel not in labelCounts.keys():
            labelCounts[currentLabel] = 0
        labelCounts[currentLabel] += 1
    Gini = 1.0
    for key in labelCounts:
        prob = float(labelCounts[key]) / numEntries
        Gini -= prob * prob
    return Gini

# 基尼指数Gini(D)表示集合D的不确定性，基尼指数Gini(D,A)表示经A=a分割后集合D的不确定性
# 基尼指数值越大，样本集合的不确定性也就越大，这一点与熵相似
def calcGiniWithFeat(dataSet, feature, value):
    """
    计算给定特征下的基尼指数
    :param dataSet:数据集
    :param feature:特征维度
    :param value:该特征变量所取的值
    :return: 计算结果
    """
    D0 = []
    D1 = []
    # 根据特征划分数据
    for featVec in dataSet:
        if featVec[feature] == value:
            D0.append(featVec)
        else:
            D1.append(featVec)
    Gini = len(D0) / len(dataSet) * calcGini(D0) + len(D1) / len(dataSet) * calcGini(D1)
    return Gini

def chooseBestSplit(dataSet):
    numFeatures = len(dataSet[0]) - 1
    bestGini = 1000000
    bestFeat = 0
    bestValue = 0
    newGini = 0
    for i in range(numFeatures):
        featList = [example[i] for example in dataSet]
        uniqueVals = set(featList)
        for splitVal in uniqueVals:
            newGini = calcGiniWithFeat(dataSet, i, splitVal)
            if newGini < bestGini:
                bestFeat = i
                bestGini = newGini
    return bestFeat

def majorityCnt(classList):
    """
    采用多数表决的方法决定叶结点的分类
    :param: 所有的类标签列表
    :return: 出现次数最多的类
    """
    classCount={}
    for vote in classList:                  # 统计所有类标签的频数
        if vote not in classCount.keys():
            classCount[vote] = 0
        classCount[vote] += 1
    sortedClassCount = sorted(classCount.items(), key=operator.itemgetter(1), reverse=True)     # 排序
    return sortedClassCount[0][0]

def splitDataSet(dataSet, axis, value):
    """
    按照给定特征划分数据集
    :param dataSet:待划分的数据集
    :param axis:划分数据集的特征
    :param value:需要返回的特征的值
    :return:划分结果列表
    """
    retDataSet = []
    for featVec in dataSet:
        if featVec[axis] == value:
            reduceFeatVec = featVec[:axis]      # chop out axis used for splitting
            reduceFeatVec.extend(featVec[axis + 1:])
            retDataSet.append(reduceFeatVec)

    return retDataSet

def createTree(dataSet,labels):
    """
    创建决策树
    :param: dataSet:训练数据集
    :return: labels:所有的类标签
    """
    classList = [example[-1] for example in dataSet]
    if classList.count(classList[0]) == len(classList):
        return classList[0]             # 第一个递归结束条件：所有的类标签完全相同
    if len(dataSet[0]) == 1:
        return majorityCnt(classList)   # 第二个递归结束条件：用完了所有特征

    bestFeat = chooseBestSplit(dataSet)   # 最优划分特征
    bestFeatLabel = labels[bestFeat]
    myTree = {bestFeatLabel: {}}         # 使用字典类型储存树的信息
    del(labels[bestFeat])
    featValues = [example[bestFeat] for example in dataSet]
    uniqueVals = set(featValues)
    for value in uniqueVals:
        subLabels = labels[:]       # 复制所有类标签，保证每次递归调用时不改变原始列表的内容
        myTree[bestFeatLabel][value] = \
            createTree(splitDataSet(dataSet, bestFeat, value), subLabels)
    return myTree

def createDataSet():
    dataSet = [['youth', 'no', 'no', 1, 'refuse'],
               ['youth', 'no', 'no', '2', 'refuse'],
               ['youth', 'yes', 'no', '2', 'agree'],
               ['youth', 'yes', 'yes', 1, 'agree'],
               ['youth', 'no', 'no', 1, 'refuse'],
               ['mid', 'no', 'no', 1, 'refuse'],
               ['mid', 'no', 'no', '2', 'refuse'],
               ['mid', 'yes', 'yes', '2', 'agree'],
               ['mid', 'no', 'yes', '3', 'agree'],
               ['mid', 'no', 'yes', '3', 'agree'],
               ['elder', 'no', 'yes', '3', 'agree'],
               ['elder', 'no', 'yes', '2', 'agree'],
               ['elder', 'yes', 'no', '2', 'agree'],
               ['elder', 'yes', 'no', '3', 'agree'],
               ['elder', 'no', 'no', 1, 'refuse'],
               ]
    labels = ['age', 'working?', 'house?', 'credit_situation']
    return dataSet, labels

def classify(inputTree, featLabels, testVec):
    """
    利用决策树进行分类
    :param: inputTree:构造好的决策树模型
    :param: featLabels:所有的类标签
    :param: testVec:测试数据
    :return: 分类决策结果
    """
    firstStr = list(inputTree.keys())[0]
    secondDict = inputTree[firstStr]
    featIndex = featLabels.index(firstStr)
    key = testVec[featIndex]
    valueOfFeat = secondDict[key]
    if isinstance(valueOfFeat, dict):
        classLabel = classify(valueOfFeat, featLabels, testVec)
    else:
        classLabel = valueOfFeat
    return classLabel

# 在决策树学习中将已生成的树进行简化的过程称为剪枝。决策树的剪枝往往通过极小化决策树的损失函数
# 或代价函数来实现。实际上剪枝的过程就是一个动态规划的过程：从叶结点开始，自底向上地对内部结点
# 计算预测误差以及剪枝后的预测误差，如果两者的预测误差是相等或者剪枝后预测误差更小，当然是剪掉
# 的好。但是如果剪枝后的预测误差更大，那就不要剪了。剪枝后，原内部结点会变成新的叶结点，其决策
# 类别由多数表决法决定。不断重复这个过程往上剪枝，直到预测误差最小为止

# 计算预测误差
def calcTestErr(myTree,testData,labels):
    errorCount = 0.0
    for i in range(len(testData)):
        if classify(myTree, labels, testData[i]) != testData[i][-1]:
            errorCount += 1
    return float(errorCount)

# 计算剪枝后的预测误差
def TestMajor(major,testData):
    errorCount = 0.0
    for i in range(len(testData)):
        if major != testData[i][-1]:
            errorCount += 1
    return float(errorCount)

def isTree(param):
    if type(param) is dict:
        return True
    else:
        return False

def pruningTree(inputTree,dataSet,testData,labels):
    firstStr = list(inputTree.keys())[0]
    secondDict = inputTree[firstStr]        # 获取子树
    classList = [example[-1] for example in dataSet]
    featKey = copy.deepcopy(firstStr)
    labelIndex = labels.index(featKey)
    subLabels = copy.deepcopy(labels)
    del(labels[labelIndex])
    for key in list(secondDict.keys()):
        if isTree(secondDict[key]):
            # 深度优先搜索,递归剪枝
            subDataSet = splitDataSet(dataSet, labelIndex, key)
            subTestSet = splitDataSet(testData, labelIndex, key)
            if len(subDataSet) > 0 and len(subTestSet) > 0:
                inputTree[firstStr][key] = pruningTree(secondDict[key], subDataSet, subTestSet, copy.deepcopy(labels))
    if calcTestErr(inputTree, testData, subLabels) < TestMajor(majorityCnt(classList), testData):
        # 剪枝后的误差反而变大，不作处理，直接返回
        return inputTree
    else:
        # 剪枝，原父结点变成子结点，其类别由多数表决法决定
        return majorityCnt(classList)


if __name__ == '__main__':
    dataSet, labels = createDataSet()
    subLabels = labels[:]
    myTree = createTree(dataSet, labels)
    print(myTree)
