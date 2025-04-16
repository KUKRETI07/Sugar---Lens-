# Sugar-Lens

Sugar Lens – Diabetes Prediction & Insights for Indian Population using Data analytics and machine learning 

Overview:
Sugar Lens is a full-stack data analytics and machine learning project built to predict diabetes and analyze its patterns among Indian citizens using real-world government 
& biological data.


Tech Stack:

 1. SQL (MySQL) – Data Cleaning, Joins, Aggregations, Case Logic

   2. Python (Pandas, Sklearn, Matplotlib, Seaborn) – Data Analysis, Feature Engineering, ML Modeling

   3. Machine Learning Models: Logistic Regression, Decision Tree, Random Forest, SVM

   4. Model Evaluation: F1 Score (94%), Accuracy (95%), Cross-Validation, Feature Importance

   5 .Power BI – Interactive Dashboards with Diabetic Risk Factors & State-wise Insights



Key Features:

   1. Cleaned and merged real-world Indian government health data with biological datasets from Kaggle

   2. Identified top diabetic-affected states using SQL queries and visualizations

   3. Built a Diabetic Risk Scorecard which shows how much are you in risk of having diabetes ( using Random Forest model )

   4. Trained and hypertuned multiple models; finalized Logistic Regression (C=100, penalty=‘l1’)

   5. Created interactive Power BI dashboards to visualize critical metrics and feature importance



Key Insights:

   1. south india mainly tamil Nadu and Uttarpardesh have highest numbers of diabetes patient in hospital acrosss india 

   2. Average BMI and glucose levels of diabetic patients is 25 and 200

   3. Strong correlation between smoking, BMI, and diabetes risk

   4. Feature importance showed ‘Glucose Level’, ‘BMI’, and ‘Age’ as top risk indicators



Deployment:

   LR model deployed locally to predict diabetes using medical parameters


Output:

  1. Python model predicting diabetes with 95% accuracy

   2 .Power BI dashboards visualizing EDA insights & risk mapping
