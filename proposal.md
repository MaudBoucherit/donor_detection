# Project Proposal
I will work on Python, as this language supports all the objectives.

## 1. Exploratory Descriptive Analysis
I will perform the following analysis on the training data:
- Univariate: distribution (density, boxplot), cleaning of categories, identification of NAs.   
**=>** Also done on the test data to make sure that the splitting was random enough.
- Bivariate: correlation of each covariate with the response variable, a category between ">50k" and "<=50k"; correlation of two covariates to measure multicollinearity among the data.
- Multivariate: fit some simple models like linear models or a single decision tree, with a selection of most predictive covariates.

For this task, I will most likely use the `pandas` library for data frames, along with `numpy` (vector) and `matplotlib` (plot). I might need a few methods from any of the `sklearn` classes.

Then, I will select a few representative statistics to present in a notebook, along with some results on what variable is most likely to predict the class of an observation.

## 2. Machine Learning Model
I will tune and fit several Machine Learning classifiers on the training dataset. I will most likely use a Random Forest or a Logistic regression, given the mix of numeric and categorical variables among the covariates. I will also try models like support vector machines, k-nearest neighbors and Naive Bayes classifier.

Those models are all available in `sklearn`, along with methods to reshape the data and perform cross-validation.

No need for a fancy model like neural networks for this type of data: the precision won't be better, and it usually takes longer to run!

For the testing, I prefer to predict using the test data once at the very end of my model and feature selection

## 3. User Interface
This is the part I am least confident with. I've previously deployed a couple of dashboards using `RShiny`, an R library. It will be a first using Python.

My dashboard should contain:
- An input tab, with manual input of a new observation, and json upload of a set of new observations, maybe also csv.
- A prediction phase using a pre-trained ML model to predict the category for the new data.
- A display tab that returns for each new observation the predicted class (most likely as a probability) with some tips on how to interpret it.
- (Optional) A data insight tab that would display where amongst the training data set are situated the new observations.

## 4. Testing
To be define, not my *forte* either...
