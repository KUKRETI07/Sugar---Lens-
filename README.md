# Sugar-Lens

Overview

Sugar Lens is a full-stack Data Analytics and Machine Learning project aimed at analyzing and predicting diabetes risk in the Indian population. This end-to-end project integrates real-world data sources, machine learning models, and interactive dashboards to extract valuable health insights.


Objectives

* Analyze diabetes prevalence across Indian states.

* Predict diabetes risk using medical and lifestyle parameters.

* Identify key features causing diabetes in the Indian population.

* Visualize insights using Power BI for data storytelling.


Tools & Technologies

* SQL (MySQL): Data cleaning, transformation, and analysis

* Python (Jupyter Notebook): Data wrangling, EDA, ML modeling

* Power BI: Interactive dashboards and data visualization

* Machine Learning: Random Forest, Logistic Regression, Decision Tree


Data Sources

* Indian Government & WHO Data: Number of diabetic patients, hospitals, state-wise distribution, budget allocations.

* Kaggle Dataset: Biological and lifestyle data relevant to diabetes risk.


Workflow

1. Data Collection & Cleaning

* Merged Indian demographic/medical data with Kaggle biological dataset.

* Cleaned datasets: handled nulls, removed duplicates, standardized column names.


2. SQL Analysis

* Performed joins, CASE statements, aggregations.

* Derived insights like:

* Top states by diabetic patient count

* Government health budget distribution

* Hospital availability in each state of india 
  

3. EDA in Python

* Visualized distributions of BMI, blood glucose levels, age, etc.

* Heatmap for feature correlation (e.g., smoking, BMI vs. diabetes)

* Transformed categorical to numeric values for modeling.
  

4. Machine Learning Pipeline

* Created a Diabetes Risk Scorecard using Random Forest.

* Feature importance plotted to highlight impactful features.

* Trained multiple models

* Logistic Regression (Final choice: 95% Accuracy, 94% F1 Score)

* Hyperparameter tuning using GridSearchCV.

* Deployed final LR model locally.
  

5. Power BI Dashboard

* Two fully functional dashboards:

* National Diabetes Trends: Prevalence by state, budget visualization, hospital infrastructure.

* Patient Health Analytics: BMI, glucose, age trends, and feature correlations.



Key Insights

* Over 60% of diabetic patients are concentrated in 8 Indian states.

* Smoking and BMI are two of the top features associated with diabetes.

* Logistic Regression outperformed other models in both accuracy and interpretability.

* Power BI dashboards provide clear, actionable health insights for policymakers and health departments.



Future Scope

* Host model using Streamlit or Flask on cloud.

* Integrate real-time data APIs.

* Collaborate with NGOs or government agencies for deployment





