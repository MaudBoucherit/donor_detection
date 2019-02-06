# Donor Detection
This is a project done for Keela as part of the interview process.  
The goal is to detect potential donors for non-profit organizations.

## About the Project
This project presents a hypothetical problem where we want to identify potential major donors to a charity. Studies have found that donors making more that $50,000 annually have the potential to be major donors. Using a machine learning algorithm, I am identifying individuals with an annual income of $50,000 or more.

## The Application
I designed a minimalist application available here: https://maudboucherit.shinyapps.io/donor_detection/  
With this application, you can enter information about a person and the application will return a prediction: is the person making more than $50,000?

## Data Insights
I've produced a report containing insights about the data used to train the model. It contains some simple statistics about the variables' distribution and some more advanced analysis of which variable is linked to the annual salary the most.  
You can find this report in [insights](insights.md).  

For a more detailed analysis of the data, you can look at the notebooks [data_insights](data_insights.ipynb) and [eda_model](eda_model.ipynb).

You can also find an explanation of how I selected the main model in the [model_detection](model_detection.ipynb) notebook.

## Dependencies
To actually run the notebook, you'll need to install Python3 and R.  
You also need to install Jupyter, and the R kernel for jupyter.  

**Python packages:**
- `numpy`,
- `pandas`,
- `scipy`,
- `matplotlib`,
- `dexplot`,
- `seaborn`.

**R packages:**
- `dplyr`,
- `rpart`,
- `rpart.plot`,
- `rattle`,
- `RColorBrewer`,
- `randomForest`,
- `rfUtilities`.

## Going Further
I haven't got the time, but in the near future, I'd like to:
- Implement a Json-upload solution to input data, and why not also csv.
- Create a data insight section that would explain in more detail why this prediction based on the respondent profile.
- Find a more sustainable solution to deal with new categories for the variables and with missing values.

## Citing sources
The different sources I used as reference during this project are listed in the [references](references.md) file.
