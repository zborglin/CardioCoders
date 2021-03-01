# CardioCoders
Data Bootcamp Group Project

# Project Charter
Cardiovascular disease is the leading cause of death in the United States. In order to identify which individuals are at the highest risk, a machine learning application is developed to identify the best predictors of disease to inform physician practice. This application aims to address the following:
- What are the most accurate predictors of cardiovascular disease?
- What locations in the United States are associated with higher relative quantities of the leading predictors?

## Data Source
The data was sourced from a Cardiovascular Dataset found in Kaggle. The dataset consists of 70,000 patient records collected during medical examinations and contains 11 features.  

Features:

- Age 
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
- Presence or absence of cardiovascular disease

### Descrepancies
At first glance, the most notable issue is the 'age' column. Rather than years, the 'age' column is presented in days. This will require some type of conversion to improve the readibility and consistency of the dataset. There are about 600 data points in the diastolic blood pressure ('ap_lo') column that have a value of 1000, in addition to a few negative values in the systolic blood pressure ('ap_hi') column. The negative values in the 'ap_hi' column may have been caused by human-input error. However, there may be another underlying factor that caused the large discrepancy within the 'ap_lo' column. In this case, consulting a medical professional may help determine whether or not these data points need to be fixed or if they should simply be dropped. 

## Overview Diagram
![Overview](https://github.com/zborglin/CardioCoders/blob/main/resources/Overview.png)
