# Sugar---Lens-

Sugar Lens – Diabetes Prediction & Insights for Indian Population

Overview:
Sugar Lens is a full-stack data analytics and machine learning project built to predict diabetes and analyze its patterns among Indian citizens using real-world government 
& biological data.


Tech Stack:

SQL (MySQL) – Data Cleaning, Joins, Aggregations, Case Logic

Python (Pandas, Sklearn, Matplotlib, Seaborn) – Data Analysis, Feature Engineering, ML Modeling

Machine Learning Models: Logistic Regression, Decision Tree, Random Forest, SVM

Model Evaluation: F1 Score (94%), Accuracy (95%), Cross-Validation, Feature Importance

Power BI – Interactive Dashboards with Diabetic Risk Factors & State-wise Insights



Key Features:

Cleaned and merged real-world Indian government health data with biological datasets from Kaggle

Identified top diabetic-affected states using SQL queries and visualizations

Built a Diabetic Risk Scorecard which shows how much are you in risk of having diabetes ( using Random Forest model )

Trained and hypertuned multiple models; finalized Logistic Regression (C=100, penalty=‘l1’)

Created interactive Power BI dashboards to visualize critical metrics and feature importance



Key Insights:

south india mainly tamil Nadu and Uttarpardesh have highest numbers of diabetes patient in hospital acrosss india 
Average BMI and glucose levels of diabetic patients

Strong correlation between smoking, BMI, and diabetes risk

Feature importance showed ‘Glucose Level’, ‘BMI’, and ‘Age’ as top risk indicators



Deployment:

LR model deployed locally to predict diabetes using medical parameters


Output:

Python model predicting diabetes with 95% accuracy

2 Power BI dashboards visualizing EDA insights & risk mapping
