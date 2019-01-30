# Donor Detection
This is a project done for Keela as part of the interview process.  
The goal is to detect potential donors for non-profit organisations.

## About the Project
This project presents a hypothetical problem where you must identify potential major donors to a charity. Studies have found that donors making more that $50,000 annually have the potential to be major donors. Your task is to use machine learning algorithms to help identify individuals with an annual income
of $50,000 or more.

## The Dataset
You’ll be using a freely available dataset from the [UCI machine learning repository](https://archive.ics.uci.edu/ml/datasets/Adult). The task is to determine whether a person makes over 50K a year. The dataset consists of a number of input features. Some of the features are numerical and some of the features are categorial. The input features and their data type are listed below.
* `age`: continuous.
* `workclass`: Private, Self-emp-not-inc, Self-emp-inc, Federal-gov, Local-gov, State-gov, Without-pay, Never-worked.
* `education`: Bachelors, Some-college, 11th, HS-grad, Prof-school, Assoc-acdm, Assoc-voc, 9th, 7th-8th, 12th, Masters, 1st-4th, 10th, Doctorate, 5th-6th, Preschool.
* `education-num`: continuous.
* `marital-status`: Married-civ-spouse, Divorced, Never-married, Separated, Widowed, Married-spouse-absent, Married-AF-spouse.
* `occupation`: Tech-support, Craft-repair, Other-service, Sales, Exec-managerial, Prof-specialty, Handlers-cleaners, Machine-op-inspct, Adm-clerical, Farming-fishing, Transport-moving, Priv-house-serv, Protective-serv, Armed-Forces.
* `relationship`: Wife, Own-child, Husband, Not-in-family, Other-relative, Unmarried.
* `race`: White, Asian-Pac-Islander, Amer-Indian-Eskimo, Other, Black.
* `sex`: Female, Male.
* `capital-gain`: continuous.
* `capital-loss`: continuous.
* `hours-per-week`: continuous.
* `native-country`: United-States, Cambodia, England, Puerto-Rico, Canada, Germany, Outlying-US(Guam-USVI-etc), India, Japan, Greece, South, China, Cuba, Iran, Honduras, Philippines, Italy, Poland, Jamaica, Vietnam, Mexico, Portugal, Ireland, France, Dominican-Republic, Laos, Ecuador, Taiwan, Haiti, Columbia, Hungary, Guatemala, Nicaragua, Scotland, Thailand, Yugoslavia, El-Salvador, Trinadad&Tobago, Peru, Hong, Holand-Netherlands.

More details on the dataset can be found [here](https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.names).

## Objectives
Your objectives are as follows:
1. Initial data analysis
2. Build a machine learning model to predict if a person makes over 50K a year
3. Deploy the model as a microservice
4. Outline a testing strategy

### 1. Initial data analysis
In this stage you will conduct an initial analysis of the dataset. This may include the following tasks:
* Cleaning up the data,
* Visualizating relations between features,
* Summarizing key characteristics.

There’s really no limitations on what you choose to do for your initial analysis. We’re not looking for a formal analysis here but it would be nice if you could present your results in a format that is easy to follow.

### 2. Building a machine learning model
After exploring the dataset, your next task is to build a machine learning model to predict if a person will make over 50K per year. Again you’re free to use any library or framework for this task. You should evaluate your model on the test dataset provided in the UCI machine learning repository. You must decide what metric best evaluates your model and justify your decision.

### 3. Deploy the model as a microservice
Once you’ve built the model, you should deploy it as a microservice. This service may be written in any framework you choose (django, flask, pyramid etc.). This service should accept requests containing the input features (age, workclass, education, marital-status, etc.) and return a prediction. Ideally this endpoint should also contain some means of authenticating the input request such as a json web token. To deploy the service to production you may use any hosting service you like (AWS, Azure, Heroku, etc.)

### 4. Testing
Throughout the development process you should be thinking about how to write tests for your code. Ideally you’ll write unit, integration, and e2e tests for your system.

## A note on time management
We understand you’re probably working full time and may not be able to finish all of the tasks listed above. By no means do we expect all of the work to be finished. Anything you don’t finish, communicate how you would go about completing that task. We’re looking for you to show off your strengths. For example, if you feel most comfortable with your data science skills, spend some extra time on the initial data analysis and include a writeup describing how you might deploy the model.

## Citing sources
Given that the dataset is freely available, there are a number of tutorials available online that use this dataset. Feel free to use these tutorials and build off of them to produce more accurate models. If you decide to build off the work of others, make sure to cite your sources.
