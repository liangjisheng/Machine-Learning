# -*- coding:utf-8 -*-
"""
@project = 0606-1
@file = decision_tree_1
@author = Liangjisheng
@create_time = 2018/6/9 0009 下午 15:56
@https://blog.csdn.net/HerosOfEarth/article/details/52347820
"""
import math
import operator
import matplotlib.pyplot as plt

def calcShannonEntropy(dataset):
    """
    计算香农熵
    :param dataset:数据集
    :return: 计算结果
    """
    numEntries = len(dataset)
    lableCounts = {}
    # 遍历每个实例，统计标签的频数
    for featVec in dataset:
        currentLabel = featVec[-1]
        if currentLabel not in lableCounts.keys():
            lableCounts[currentLabel] = 0
        lableCounts[currentLabel] += 1

    shannonEnt = 0.0
    for key in lableCounts:
        prob = float(lableCounts[key]) / numEntries
        shannonEnt -= prob * math.log(prob, 2)      # 以2为底的对数

    return shannonEnt

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

def calcConditionalEntropy(dataSet, i, featList, uniqueVals):
    """
    计算X_i给定的条件下，Y的条件熵
    :param dataSet: 数据集
    :param i: 维度i
    :param featList:数据集特征列表
    :param uniqueVals: 数据集特征集合
    :return: 条件熵
    """
    conditionEnt = 0.0
    for value in uniqueVals:
        subDataSet = splitDataSet(dataSet, i, value)
        prob = len(subDataSet) / float(len(dataSet))    # 极大似然估计概率
        conditionEnt += prob * calcShannonEntropy(subDataSet)   # 条件熵的计算

    return conditionEnt

# 信息增益表示得知特征X的信息而使得类Y的信息的不确定性减少的程度。特征A对训练数据集D的
# 信息增益g(D,A)定义为集合D的经验熵H(D)与特征A给定条件下D的经验条件熵H(D)与H(D|A)之差，即
# g(D,A)=H(D)−H(D|A), 这个差又称为互信息,信息增益大的特征具有更强的分类能力
# 以信息增益作为划分训练数据集的特征的算法称为ID3算法
def calcInformationGain(dataSet, baseEntropy, i):
    """
    计算信息增益
    :param dataSet:数据集
    :param baseEntropy: 数据集的信息熵
    :param i: 特征维度i
    :return: 特征i对数据集的信息增益g(D|X_i)
    """
    featList = [example[i] for example in dataSet]      # 第i维特征列表
    uniqueVals = set(featList)      # 转换成集合
    newEntropy = calcConditionalEntropy(dataSet, i, featList, uniqueVals)
    infoGain = baseEntropy - newEntropy
    return infoGain

# 信息增益比 g'(D,A)=g(D,A) / H(D)
# 用信息增益比来选择特征的算法称为C4.5算法
def calcInformationGainRatio(dataSet, baseEntropy, i):
    """
    计算信息增益比
    :param dataSet:数据集
    :param baseEntropy: 数据集的信息熵
    :param i: 特征维度i
    :return: 特征i对数据集的信息增益比
    """
    return calcInformationGain(dataSet, baseEntropy, i) / baseEntropy

# ID3算法由Ross Quinlan发明，建立在“奥卡姆剃刀”的基础上：越是小型的决策树越优于大的决策树
# (be simple简单理论),ID3算法中根据信息增益评估和选择特征，每次选择信息增益最大的特征作为
# 判断模块建立子结点。ID3算法可用于划分标称型数据集，没有剪枝的过程，为了去除过度数据匹配的问题，
# 可通过裁剪合并相邻的无法产生大量信息增益的叶子节点(例如设置信息增益阀值).
# 使用信息增益的话其实是有一个缺点，那就是它偏向于具有大量值的属性。就是说在训练集中，
# 某个属性所取的不同值的个数越多，那么越有可能拿它来作为分裂属性，而这样做有时候是没有意义的
# 另外ID3不能处理连续分布的数据特征，于是就有了C4.5算法
def chooseBestFeatureToSplitByID3(dataSet):
    """
    选择最好的数据集划分方式
    :param dataSet: 数据集
    :return: 划分结果
    """
    # # 最后一列yes分类标签，不属于特征向量
    numFeatures = len(dataSet[0]) - 1
    baseEntropy = calcShannonEntropy(dataSet)
    bestInfoGain = 0.0
    bestFeature = -1
    for i in range(numFeatures):    # 遍历所有特征
        infoGain = calcInformationGain(dataSet, baseEntropy, i)     # 计算信息增益
        if infoGain > bestInfoGain:     # 选择最大的信息增益
            bestInfoGain = infoGain
            bestFeature = i

    return bestFeature      # 返回最优特征对应的维度

def majorityCnt(classList):
    """
    采用多数表决的方法决定叶节点的分类
    :param classList: 所有的类标签列表
    :return: 出现次数最多的类
    """
    classCount = {}
    # 统计所有类标签的频数
    for vote in classList:
        if vote not in classCount.keys():
            classCount[vote] = 0
        classCount[vote] += 1

    sortedClassCount = sorted(classCount.items(), key=operator.itemgetter(1))
    return sortedClassCount[0][0]

def createTree(dataSet, labels, chooseBestFeature=chooseBestFeatureToSplitByID3):
    """
    创建决策树
    :param dataSet: 训练数据集
    :param labels: 所有的类标签
    :return:
    """
    classList = [example[-1] for example in dataSet]
    if classList.count(classList[0]) == len(classList):
        return classList[0]  # 第一个递归结束条件：所有的类标签完全相同
    if len(dataSet[0]) == 1:
        return majorityCnt(classList)  # 第二个递归结束条件：用完了所有特征

    bestFeat = chooseBestFeature(dataSet)  # 最优划分特征
    bestFeatLabel = labels[bestFeat]
    myTree = {bestFeatLabel: {}}  # 使用字典类型储存树的信息
    del (labels[bestFeat])
    featValues = [example[bestFeat] for example in dataSet]
    uniqueVals = set(featValues)
    for value in uniqueVals:
        subLabels = labels[:]  # 复制所有类标签，保证每次递归调用时不改变原始列表的内容
        myTree[bestFeatLabel][value] = createTree(splitDataSet(dataSet, bestFeat, value), subLabels)
    return myTree

# 导入数据
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

# C4.5算法用信息增益率来选择属性，继承了ID3算法的优点。并在以下几方面对ID3算法进行了改进：
# 克服了用信息增益选择属性时偏向选择取值多的属性的不足
# 在树构造过程中进行剪枝
# 能够完成对连续属性的离散化处理
# 能够对不完整数据进行处理
# C4.5算法在结构与递归上与ID3完全相同，区别只在于选取决决策特征时的决策依据不同
def chooseBestFeatureToSplitByC45(dataSet):
    """
    选择最好的数据集划分方式
    :param dataSet: 数据集
    :return: 划分结果
    """
    numFeatures = len(dataSet[0]) - 1  # 最后一列yes分类标签，不属于特征变量
    baseEntropy = calcShannonEntropy(dataSet)
    bestInfoGainRate = 0.0
    bestFeature = -1
    for i in range(numFeatures):  # 遍历所有维度特征
        infoGainRate = calcInformationGainRatio(dataSet, baseEntropy, i)  # 计算信息增益比
        if infoGainRate > bestInfoGainRate:  # 选择最大的信息增益比
            bestInfoGainRate = infoGainRate
            bestFeature = i
    return bestFeature  # 返回最佳特征对应的维度

# 构造了决策树之后，我们就可以将它用于实际数据的分类，在执行分类时，需要输入决策树和
# 用于构造树的所有类标签向量。然后，程序比较测试数据与决策树上的数值，递归执行该过程
# 直到进入叶结点；最后将测试数据定义为叶结点所属的类型
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


if __name__ == '__main__':
    myDat, labels = createDataSet()
    print(labels)
    labels_backup = labels.copy()
    myTree_ID3 = createTree(myDat, labels)
    print(myTree_ID3)
    print()

    # 使用ID3算法和C4.5算法在这里得到的结果是一样的
    # labels = labels_backup.copy()
    # print(labels)
    # myTree_C45 = createTree(myDat, labels, chooseBestFeatureToSplitByC45)
    # print(myTree_C45)

    # 分类
    testVec = ['youth', 'no', 'no', 1]
    print('测试向量:', testVec)
    print('决策结果:', classify(myTree_ID3, labels_backup, testVec))
