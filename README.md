# CardioCoders
Data Bootcamp Group Project

# Project Charter
Cardiovascular disease is the leading cause of death in the United States. In order to identify which individuals are at the highest risk, a machine learning application is developed to identify the best predictors of disease to inform physician practice. This application aims to address the following:
- What are the most accurate predictors of cardiovascular disease?
- What locations in the United States are associated with higher relative quantities of the leading predictors?

## Overview Diagram
<p align="center">
  <img src="https://github.com/zborglin/CardioCoders/blob/main/resources/Overview.png">
</p>

## Communication Protocol
Our entire group will meet a minimum of twice per week via Zoom to discuss upcoming deliverables and ensure everyone is on track. We will use Slack to communicate in between meetings and ad-hoc Zoom meetings will be scheduled as needed. If someone requires additional assistance with their portion of the project this will also be communicated through Slack or weekly meetings.  

## Data Source
The data was sourced from a Cardiovascular Dataset found in Kaggle. The dataset consists of 70,000 patient records collected during medical examinations and contains 11 features.  

Features:

- Age (years)
- Height (cm) 
- Weight (kg) 
- Gender (1-male; 2-female)
- Systolic blood pressure 
- Diastolic blood pressure 
- Cholesterol (1: normal, 2: above normal, 3: well above normal)
- Glucose (1: normal, 2: above normal, 3: well above normal)
- Smoking
- Alcohol intake 
- Physical activity 
- Presence or absence of cardiovascular disease (target variable)

### Discrepancies
At first glance, the most notable issue is the 'age' column. Rather than years, the 'age' column is presented in days. This will require some type of conversion to improve the readibility and consistency of the dataset. There are about 600 data points in the diastolic blood pressure ('ap_lo') column that have a value of 1000, in addition to a few negative values in the systolic blood pressure ('ap_hi') column. The negative values in the 'ap_hi' column may have been caused by human-input error. However, there may be another underlying factor that caused the large discrepancy within the 'ap_lo' column. In this case, consulting a medical professional may help determine whether or not these data points need to be fixed or if they should simply be dropped. 

<p align="center">
<img src = "https://github.com/zborglin/CardioCoders/blob/main/resources/ap_lo_discrepancy_data.png" width="400" height="400"/>
<img src = "https://github.com/zborglin/CardioCoders/blob/main/resources/ap_hi_discrepancy_data.PNG" width="400" height="400"/>
</p>

We decided to drop the outlying data points associated with diastolic and systolic blood pressures, because they were extreme outliers that did not make sense. In researching diastolic and systolic blood pressures even further, we found information regarding blood pressure ranges, thanks to healthline.com. Below is a visual chart explaining the differences in blood pressure ranges.

<p align="center">
  <img width="600" height="800" src="https://github.com/zborglin/CardioCoders/blob/main/resources/BloodPressureReadings(healthline).png">
</p>

### Data Transformation
The first transformation is to convert 'age' column into years since it was presented in days. After loading the dataset into Jupyter Notebook, the 'age' column was duplicated and converted into years. The original 'age' column was then removed, and the new column was renamed. However, unlike the original, the new column's data type was and object and needed to be changed into an integer. Lastly, the 'age' column had to be converted to a whole number.  To get rid of the decimal points, the data needed to be rounded down to a whole number. 


## Deep Learning Neural Network Model
A deep learning neural network model was chosen due to the size of the data set, which a deep learning model works exceptionally well for. The ability to add hidden layers allows the model to capture the complexity and volume of the dataset. Two limitations of using this type of model include overfitting and duration of time required to run the model.  After the data was cleaned, there were 67, 482 data points. Because this dataset did not contain any categorical data, cleaning is all that was needed to preprocess the data. 
#### Model Overview
The data was first loaded into a DataFrame. Then the features and target were defined. The features included all of the columns except the "id" column because it is just a numbered list and the target variable which is whether or not the patient (data point) had cardiovascular disease or not. The target variable was already encoded as a 0 or 1. Based on the level of significance of the features that were calculated and displayed in the pareto chart, the ones with the least significance were removed one at a time. This did not significantly impact model accuracy. The data was the split into training and testing data using the sklearn library. 75% of the data was utlized to train the model and 25% of it was used to test the model. A StandardScaler instance was created to standardize the data. The model was then defined with the input features, three hidden layers, and an output layer. The relu activation function was chosen for the hidden layers because of it’s ability to handle nonlinear data. After statistical analysis, the activation functions were not changed. This was decided after visualization of relationships within the data. The sigmoid activation function was chosen for the output layer. The structure of the model was visualized using the summary method. The model was then compiled and trained with 100 epochs. The model was then evaluated and the loss metric and accuracy metric were obtained. The loss metric was 0.54 and the model accuracy was 0.73.
#### Model Changes
There were a few changes made to the third draft of the model. Two additional hidden layers were added. The number of neurons in the input and hidden layers were altered. The number of epochs was decreased to 50 and then increased to 500. Features with the column names 'gluc', 'smoke', 'alco' were removed one at a time and the model was run. A BMI column was added to the DataFrame. A support vector model (SVM) and a Random Forest Classifer were both run using the data. Similar accuracy scores were obtained. 
These alterations did not have a significant impact on model accuracy. 
