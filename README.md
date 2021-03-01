# CardioCoders
Data Bootcamp Group Project

# Project Charter
Cardiovascular disease is the leading cause of death in the United States. In order to identify which individuals are at the highest risk, a machine learning application is developed to identify the best predictors of disease to inform physician practice. This application aims to address the following:
- What are the most accurate predictors of cardiovascular disease?
- What locations in the United States are associated with higher relative quantities of the leading predictors?

## Overview Diagram
![Overview](https://github.com/zborglin/CardioCoders/blob/main/resources/Overview.png)

## Communication Protocol
Our entire group will meet a minimum of twice per week via Zoom to discuss upcoming deliverables and ensure everyone is on track. We will use Slack to communicate in between meetings and ad-hoc Zoom meetings will be scheduled as needed. If someone requires additional assistance with their portion of the project this will also be communicated through Slack or weekly meetings.  

## Data Source
The data was sourced from a Cardiovascular Dataset found in Kaggle. The dataset consists of 70,000 patient records collected during medical examinations and contains 11 features.  

Features:

- Age (days)
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

<p float="left">
<img src = "https://github.com/zborglin/CardioCoders/blob/main/resources/ap_lo_discrepancy_data.png" width="500" height="500"/>
<img src = "https://github.com/zborglin/CardioCoders/blob/main/resources/ap_hi_discrepancy_data.png" width="500" height="500"/>
</p>

### Data Transformation
The first transformation is to convert 'age' column into years since it was presented in days. After loading the dataset into Jupyter Notebook, the 'age' column was duplicated and converted into years. The original 'age' column was then removed, and the new column was renamed. However, unlike the original, the new column's data type was and object and needed to be changed into an integer.
