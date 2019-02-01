# Day by Day Notebook

This is a file to put my work and thought as I go on with the project. I will write down my critics about what I do, what I want to do, ideas coming up as the project advances...


## Day 1
Wednesday 30th January

I created a repo with a README (for now, the instructions), an MIT LICENSE, and a proposal file containing my plans for this project.  
I've downloaded and saved the data in a data folder and started an iPython notebook importing some modules, the data, and checking the data types, categories, and missing values.

**First comments:**  
Both datasets have some missing values in the variables `workclass`, `occupation`, and `native-country`. Only 7.4% of the training observations have missing values. That is low so I might just use the complete subset of the data to train my model.

However, I need to decide on a method to impute missing data for new input. Here are three methods I am considering:
- Impute by the mode/average,
- Impute by random assignment following the variable distribution,
- Impute by regression of the other variables (meaning looking at the non-missing values of the observation, what value is the most likely?).

The last one can only give better results, but it's more complicated to implement. The other two should be fairly equivalent, in results and implementation.  
Since only three variables are concerned with the missing values, I will decide what amount of effort to put in NA imputation according to those variables importance for the prediction. If the variables have a low predictive effect, I won't use a fancy way of imputing.

*Note to myself*: I should put a warning when the input contains missing values, or values in a different datatype/range. Then, give a choice: go back and change the value, or continue knowing the value will be imputed.

---
## Day 2
Thursday 31st January

Did the univariate analysis for both numeric and categorical variables:
- numeric: the capital variables have a lot of 0: more than 95%! They might not be useful at all for the prediction, to be determine.
- categorical: some categories have very few observations. I might group categories together.

---
## Day 3
Friday 1st February

Correlation day!
1. KS-tests for all numeric variables with the response
2. probability comparison between the two classes for all the categorical variables (creation of a continent variable)
3. Some correlation measurement for all possible covariate duo to identify possible correlations. Keep only the significant one as a warning of multi-multicollinearity
