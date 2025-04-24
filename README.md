# Sugar Lens – Diabetes Risk Prediction & Analysis

# Overview

Sugar Lens is a healthcare-focused data science project that predicts diabetes risk using real-world datasets. By combining Indian public health data and the Pima Indians Diabetes Database, this project aims to help identify high-risk individuals and assist in public health decision-making.

[![Image](https://github.com/KUKRETI07/Sugar---Lens-/blob/1377b347c8752c8d770cdafc1fa2a655b30e267e/Screenshot%20(50).png)

# Problem Statement

Early identification of individuals at risk of diabetes is crucial for proactive healthcare intervention. This project leverages machine learning and visual analytics to uncover key diabetes indicators and predict risk with high accuracy.

# Tools & Technologies

* Languages: Python, SQL (MySQL)

* Libraries: Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn

* ML Model: Random Forest

* Techniques: PCA, Feature Engineering, Outlier Handling, EDA

* BI Tool: Power BI (DAX, KPIs, Slicers)

* Others: Jupyter Notebook, Git, GitHub

 #  Project Workflow

1. Data Collection & Cleaning

* Imported datasets into SQL and merged using JOINs

* Removed duplicates, handled missing values

* Filtered and standardized using SQL + Pandas

2. Exploratory Data Analysis (EDA)

* Analyzed patterns in glucose level, age, BMI, pregnancies, and insulin

* Created distribution plots and correlations

3. Feature Engineering

* Created BMI groups, Age bands, and binary risk indicators

* Handled outliers using IQR

* Applied PCA to reduce dimensions and improve model speed

4. Model Building

* Trained a Random Forest Classifier

* Achieved 90% accuracy in predicting diabetes risk

* Evaluated using Confusion Matrix, Precision, Recall, ROC-AUC

5. Power BI Dashboard

* Designed a full dashboard for risk segmentation

* KPIs: Total Patients, Diabetic %, BMI Distribution

* Slicers: Gender, Age Group, Region

* Risk Categories: Low, Moderate, High

# Key Insights

* Patients with high glucose, high BMI, and higher pregnancies showed higher diabetes risk

* Younger patients with healthy BMI had lower risk profiles

* Public health authorities can use these risk segments for targeted intervention
