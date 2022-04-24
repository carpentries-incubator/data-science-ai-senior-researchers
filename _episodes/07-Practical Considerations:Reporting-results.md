---
title: "Practical Considerations: Reporting Results"
teaching: 0
exercises: 0
questions:
- "What are best practices for reporting results from machine learning pipelines?"
objectives:
- "Understand typical outputs from supervised and unsupervised machine learning algorithms"
- "Learn how to present your results responsibly" 
keypoints:
- "There are common frameworks that you can use to present your work and ensure they are consistent within ML research"
- "Machine Learning intends to deploy a model in a a real-world setting and as such you should report it's predictive power and limitations accurately."
---

### Reporting results from machine learning pipelines

As with any other statistical analysis you can expect to report various metrics that communicate your results obtained from a machine learning pipeline. You may have heard of p-values, adjusted R-squared and the t-statistic used in methods such as a t-test or chi-squared-test. Supervised and Unsupervised machine learning algorithms have their own metrics that you will be reporting:

* Supervised algorithms:
    - Accuracy
    - Sensitivity
    - Specificity
    - Precision
    - Recall
    - F1 score
* Unsupervised algorithms
    - Total within sum of squared error
    - Gap statistic
    - Silhouette value
    - Akaike Information Criterion

#### Reporting results in supervised analysis

Supervised analysis aims to classify something into specific categories, and often into just two categories (binary). When training a supervised algorithm we can compare it's predictions to the *ground truth* and therefore say if it is correct or incorrect. These leads to the first staple of reporting in supervised learning: **the confusion matrix** 

##### The Confusion matrix

For N number of classes (i.e. N=2 for predicting cancer vs no cancer), a confusion matrix is an NxN matrix that records how many the algorithm classified correctly and incorrectly by visualizing the actual classes against the predicted classes.

![](https://i.pinimg.com/736x/7d/49/d5/7d49d532ebbdd5247f121adfbe77b688.jpg)

However many classes there are, a confusion matrix reports 4 types of outcome:

**True Positives** - The classifier predicts a positive case i.e. cancer, and that person does actually have cancer
**True Negative** - The classifier predicts a negative case i.e. *no* cancer, and that person doesn't actually have cancer
**False Positives** - The classifier predicts a positive case i.e. cancer, but that person doesn't actually have cancer
**True Positives** - The classifier predicts a negative case i.e. *no* cancer, but that person does actually have cancer

These 4 components can be used to calculate what are the most common metrics in supervised classification - accuracy, sensitivity and specificity. 

**Accuracy** - The percentage of correct classifications in the dataset
**Sensitivity** - The percentage of positive cases correctly identified
**Specificity** - The percentage of negative cases correctly identified

In some use-cases, such as *information retrieval tasks*, the **precision** of a model can be important where you aren't expecting to evaluate any negative cases. For example if we wrote a machine learning algorithm to scan clinic letters for people with epilepsy, we know that most of the population do not have epilepsy and so "no epilepsy" won't be explicitly recorded. Only *if* someone has epilepsy would it be recorded. So we are interested in assessing out of all the cases the algorithm predicts as having epilepsy, how many actually had epilepsy? but we are also interested in assessing out of all the *possible* epilepsies in the population, what percentage does the algorithm pick up? The latter is measured by precision. Precision is used for *information retrieval* tasks, and sensitivity is used for *classification* tasks. 

While it might seem like accuracy, a combination of sensitivity and specificity, is the most important metric, it actually is the least useful. If your primary aim is to pick up as many COVID-19 cases as possible to reduce spread, *sensitivity* will tell you how well your algorithm does, not accuracy. If it is important to be as sure as possible that someone will likely develop disease because it will likely cause harm in other ways i.e. developing mental health issues due a diagnosis of dementia, *specificity* can help you prioritize when to label someone with the disease. Hence the main task in supervised machine learning is knowing how to trade sensitivity with specificity. This is where the **Receiver Operator Characteristic (ROC) Curve** can help.

##### ROC Curves

As well as a decision "disease or not disease", ML algorithms provide a numerical prediction (in some cases a probability) of developing the disease. Whatever this numerical range is, we can choose a threshold of when to classify someone as having a disease. If we move the threshold one way we will increase sensitivity, and if we move it the other direction we will increase specificity. This means we could visualize all the resulting sensitivities and specificities for each threshold we choose. This powerful visualization is called a **ROC Curve** and we can use it to choose a threshold for a desired sensitivity, knowing how much specificity we would have to sacrifice.  

<p align="center">
<img src="../fig/ROC.png" alt="drawing" width="350"/>
</p>

<p align="center">
<img src="../fig/ROC2.png" alt="drawing" width="400"/>
</p>

From the blue curve we have marked three points on the graph; the point where sensitivity and specificity are balanced i.e. the point taken to produce the default confusion matrix; a theoretical perfect classifier; and a point that trades away some specificity for an increase in specificity.


#### Calibration of predictions from over or under sampled datasets

Much of the considerations above tend to ignore the fact that another output of a classifier is that they may be able to produce class probabilities i.e. 70% chance of developing lung disease as opposed to "predicted as developing lung disease". Commonly used methods that deal with imbalanced data can greatly effect predicted class probabilities, and you might only be interested in the class probability (this is far more useful in the author's opinion!). Logistic regression is a perfect example - is just a regression technique until you impose a threshold of class probability to classify into a binary outcome. It is entirely possible to have a good "classifier" but still have odd predicted class probabilities i.e. after oversampling the majority class, the predicted probability profile distribution of healthy controls are artificially shifted closer to that of those who went on to develop some disease, but a clever threshold might still tell both groups apart well. The problem is that you can end up telling someone who might not ever develop the disease that they might have a high probability of developing the disease, even though the class label predicts them not to develop it. So what can we do to re-calibrate these class probabilities?


> Here are two interesting resources on risk calibration and the role of thresholds for classification:
https://bmcmedicine.biomedcentral.com/articles/10.1186/s12916-019-1466-7
https://www.fharrell.com/post/classification/