# -*- coding:utf-8 -*-
"""
# https://blog.csdn.net/gumpeng/article/details/51191376
@project = 0603-1
@file = logistic_regression
@author = Liangjisheng
@create_time = 2018/6/3 0003 下午 17:41
"""
import numpy as np
import matplotlib.pyplot as plt
import time
import random

# calculate the sigmoid function
def sigmoid(inX):
    return 1.0 / (1 + np.exp(-inX))

# train a logistic regression model using some optional optimize algorithm
# input: train_x is a np.mat data type, each row stands for one sample
#        train_y is np.mat data type too, each row is the corresponding label
#        opts is optimize option include step and maximum number of iterations
def trainLogRegress(train_x, train_y, opts):
    # calculate training time
    startTime = time.time()

    numSamples, numFeatures = np.shape(train_x)
    alpha = opts['alpha']
    maxIter = opts['maxIter']
    weights = np.ones((numFeatures, 1))

    # optimize through gradient descent algorithm
    for k in range(maxIter):
        # gradient descent algorithm
        if opts['optimizeType'] == 'gradDescent':
            output = sigmoid(train_x * weights)
            error = train_y - output
            weights = weights + alpha * train_x.transpose() * error
        # stochastic gradient descent
        elif opts['optimizeType'] == 'stocGradDescent':
            for i in range(numSamples):
                output = sigmoid(train_x[i, :] * weights)
                error = train_y[i, 0] - output
                weights = weights + alpha * train_x[i, :].transpose() * error
        # # smooth stochastic gradient descent
        elif opts['optimizeType'] == 'smoothStocGradDescent':
            # randomly select samples to optimize for reducing cycle fluctuations
            dataIndex = range(numSamples)
            for i in range(numSamples):
                alpha = 4.0 / (1.0 + k + i) + 0.01
                randIndex = int(random.uniform(0, len(dataIndex)))
                output = sigmoid(train_x[randIndex, :] * weights)
                error = train_y[randIndex, 0] - output
                weights = weights + alpha * train_x[randIndex, :].transpose() * error
                # during one iteration, delete the optimized sample
                del(dataIndex[randIndex])
        else:
            raise NameError('Not support optimize method type!')

    print('congratulations, training complete! Took %fs.' % (time.time() - startTime))
    return weights

# test your trained Logistic Regression model given test set
def TestLogRegres(weights, test_x, test_y):
    numSamples, numFeatures = np.shape(test_x)
    matchCount = 0
    for i in range(numSamples):
        predict = sigmoid(test_x[i, :] * weights)[0, 0] > 0.5
        if predict == bool(test_y[i, 0]):
            matchCount += 1

    accuracy = float(matchCount) / numSamples
    return accuracy

# show your trained logistic regression model only available with 2-D data
def showLogRegres(weights, train_x, train_y):
    # notice: train_x and train_y is np.mat data type
    numSamples, numFeatures = np.shape(train_x)
    if numFeatures != 3:
        print('Sorry! I can not draw because the dimension of your data is not 2!')
        return 1

    # draw all samples
    for i in range(numSamples):
        if int(train_y[i, 0]) == 0:
            plt.plot(train_x[i, 1], train_x[i, 2], 'or')
        elif int(train_y[i, 0]) == 1:
            plt.plot(train_x[i, 1], train_x[i, 2], 'ob')

    # draw the classify line
    min_x = np.min(train_x[:, 1])[0, 0]
    max_x = np.max(train_x[:, 1])[0, 0]
    weights = weights.getA()    # convert mat to array
    y_min_x = float(-weights[0] - weights[1] * min_x) / weights[2]
    y_max_x = float(-weights[0] - weights[1] * max_x) / weights[2]
    plt.plot([min_x, max_x], [y_min_x, y_max_x], '-g')
    plt.xlabel('X1')
    plt.ylabel('X2')
    plt.show()

def loadData():
    train_x = []
    train_y = []
    fileIn = open('E:/Python/Machine Learning in Action/testSet.txt')
    for line in fileIn.readlines():
        lineArr = line.strip().split()
        train_x.append([1.0, float(lineArr[0]), float(lineArr[1])])
        train_y.append(float(lineArr[2]))
    return np.mat(train_x), np.mat(train_y).transpose()


if __name__ == '__main__':
    # step1: load data...
    print('step1: load data...')
    train_x, train_y = loadData()
    test_x = train_x
    test_y = train_y

    print('step2: training...')
    opts = {'alpha': 0.01, 'maxIter': 20, 'optimizeType': 'smoothStocGradDescent'}
    optimalWeights = trainLogRegress(train_x, train_y, opts)

    print('step3: testing...')
    accuracy = TestLogRegres(optimalWeights, test_x, test_y)

    print('step4: show the result...')
    print('The classify accuracy is: %.3f%%' % (accuracy * 100))
    showLogRegres(optimalWeights, train_x, train_y)
