                                                  # project sugar lens  

create database sugar_lenss;
use sugar_lenss;
show tables;
set sql_safe_updates = 0;
                                                      # Tables 
select * from diabetes_dataset;
select * from diabetes_patients_with_hospitals;
select * from funds_realsed_by_goverment;
select * from gov_cells;

                                                  #BASIC CLEARNING 
                                                  
  # cleaning the table    "diabetes_dataset"
         
        # droping the unwanted columns 
        
ALTER TABLE diabetes_dataset DROP  `Ethnicity`,       
DROP  `Socioeconomic Factors`,
DROP  `History of PCOS`,
DROP `Pregnancy History`,
DROP   `Weight Gain During Pregnancy`,
DROP  `Pulmonary Function`,
DROP  `Cystic Fibrosis Diagnosis`,
DROP  `Genetic Testing`,
DROP  `Neurological Assessments`;
ALTER TABLE diabetes_dataset DROP  `Genetic Markers`;
ALTER TABLE diabetes_dataset DROP  `Previous Gestational Diabetes`;

          # Standerdize column name 
 
ALTER TABLE diabetes_dataset RENAME COLUMN `Family History` TO Glucose_levels ,           
 RENAME COLUMN `Environmental Factors` TO Environmental_Factors,
 RENAME COLUMN `Insulin Levels` TO Insulin_Levels,
 RENAME COLUMN `Physical Activity` TO Physical_Activity,
 RENAME COLUMN `Dietary Habits` TO Dietary_Habits,
 RENAME COLUMN `Blood Pressure` TO Blood_Pressure,
 RENAME COLUMN `Cholesterol Levels` TO Cholesterol_Levels,
 RENAME COLUMN `Blood Glucose Levels` TO Blood_Glucose_Levels,
 RENAME COLUMN `Smoking Status` TO Smoking_Status,
 RENAME COLUMN `Alcohol Consumption` TO Alcohol_Consumption,
 RENAME COLUMN `Glucose Tolerance Test` TO Glucose_Tolerance_Test,
 RENAME COLUMN `Pancreatic Health` TO Pancreatic_Health,
 RENAME COLUMN `Steroid Use History` TO Steroid_Use_History,
 RENAME COLUMN `Liver Function Tests` TO Liver_Function_Tests,
 RENAME COLUMN `Digestive Enzyme Levels` TO Digestive_Enzyme_Levels,
 RENAME COLUMN `Urine Test` TO Urine_Test,
 RENAME COLUMN `Birth Weight` TO Birth_Weight,
RENAME COLUMN `Early Onset Symptoms` TO Early_Onset_Symptoms;
ALTER TABLE diabetes_dataset RENAME COLUMN `Waist Circumference` TO Waist_Circumference;

          # checking null values using case function 
 
SELECT 
    COUNT(*) AS total_rows,                                                    
    SUM(CASE WHEN Insulin_levels IS NULL THEN 1 ELSE 0 END) AS column1_nulls,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS column2_nulls,
    SUM(CASE WHEN BMI IS NULL THEN 1 ELSE 0 END) AS column3_nulls,
    SUM(CASE WHEN Blood_Pressure IS NULL THEN 1 ELSE 0 END) AS column3_nulls,
    SUM(CASE WHEN Cholesterol_levels  IS NULL THEN 1 ELSE 0 END) AS column3_nulls,
    SUM(CASE WHEN Blood_Glucose_Levels IS NULL THEN 1 ELSE 0 END) AS column3_nulls,
    SUM(CASE WHEN Pancreatic_Health IS NULL THEN 1 ELSE 0 END) AS column3_nulls,
    SUM(CASE WHEN Digestive_Enzyme_Levels  IS NULL THEN 1 ELSE 0 END) AS column3_nulls
FROM diabetes_dataset;    
                                        
             # checking Abnormalities 
             
select * from diabetes_dataset               
where Age     or BMI or
     Blood_Pressure or                         # we do have some errors and we cant change it here directly so we will look into this in python 
     Cholesterol_levels or  
     Blood_Glucose_Levels or      Pancreatic_Health 
 or     Digestive_Enzyme_Levels<1;
                                         
                                            
                     # checking duplicate values 
                     
 select  Target , Autoantibodies , Glucose_Levels , Environmental_factors , Insulin_Levels ,Age , BMI , 
Physical_Activity , Blood_Pressure , Cholesterol_Levels , Blood_Glucose_Levels , Smoking_status , Alcohol_Consumption , Glucose_Tolerance_Test,
Pancreatic_Health , Steroid_Use_History , Liver_Function_Tests ,
 Digestive_Enzyme_Levels , Urine_Test , Birth_Weight, Early_Onset_Symptoms , count(*) from diabetes_dataset
group  by Target , Autoantibodies , Glucose_Levels , Environmental_factors , Insulin_Levels ,Age , BMI , 
Physical_Activity , Blood_Pressure , Cholesterol_Levels , Blood_Glucose_Levels , Smoking_status , Alcohol_Consumption , Glucose_Tolerance_Test,
Pancreatic_Health , Steroid_Use_History , Liver_Function_Tests ,
 Digestive_Enzyme_Levels , Urine_Test , Birth_Weight , Early_Onset_Symptoms
having count(*) > 1;
                                          
		# cleaning  other tables 
        
select * from diabetes_patients_with_hospitals;    
delete from diabetes_patients_with_hospitals where state = "India";

ALTER TABLE diabetes_patients_with_hospitals RENAME COLUMN `Patients_on_Anti_diabetic_treatment_total` TO Patients_on_Anti_diabetic_treatment_Public ;
ALTER TABLE diabetes_patients_with_hospitals RENAME COLUMN `Patients_on_Anti-diabetic_treatment_Private` TO Patients_on_Anti_diabetic_treatment_Private;
ALTER TABLE diabetes_patients_with_hospitals RENAME COLUMN `Patients_on_Anti_diabetic_treatment_Tota` TO Patients_on_Anti_diabetic_treatment_total;
        
select * from funds_realsed_by_goverment;

     # Standerdize column name 
     
 ALTER TABLE  funds_realsed_by_goverment RENAME COLUMN `2012-13` TO 2012_2013 ,
 RENAME COLUMN `2013-14` TO 2013_2014,
 RENAME COLUMN `2014-15` TO 2014_2015,
 RENAME COLUMN `2015-16(*)` TO  2015_2016_running;
 
 
select * from gov_cells;
 ALTER TABLE  gov_cells RENAME COLUMN `S.No.` TO S_No ; 


      # checking null value using  joins  
      
select count(*) as count_of_null from gov_cells as c   
left join  funds_realsed_by_goverment as f on c.state = f.state 
having  count(*) is null ;

    #  removing NA values from rows 
    
alter table gov_cells  modify  State_cells varchar(255);

update gov_cells set  State_cells = "0"  where  State_cells = "NA";

 alter table gov_cells  modify  State_cells varchar(255);


                                                    # Analyzing Diabetes in India  

      # Avg blood pressure , bmi and other biological parameters for different type of diabetes 
select * from diabetes_dataset;
select Target , avg(Blood_Glucose_Levels) , avg(Cholesterol_Levels) , avg(Insulin_Levels) from diabetes_dataset
group by Target;
 
          # top states which have most number of diabetes patients 
select * from diabetes_patients_with_hospitals; 
select state , sum(patients_with_symptoms_Total) as patients_with_symptoms , sum(diagnosed_patients_Public_Total) as diagnosed_patients
from diabetes_patients_with_hospitals
group by state order by patients_with_symptoms desc;


            # private hospitals and goverment hospitals patients ratio 
select * from diabetes_patients_with_hospitals;
select state , sum(diagnosed_patients_Public) 
 as gov_hospitals_patients , sum(diagnosed_patients_Private) as private_hospitals_patients from diabetes_patients_with_hospitals
group by state order by  gov_hospitals_patients desc ;


   # district cells in each state and its patients number in hospitals  
select g.state , District_Cell ,  sum(diagnosed_patients_Public_Total) as patients from gov_cells as  g
left join diabetes_patients_with_hospitals as s 
on g.State = s.State 
group by g.state , District_Cell order by patients desc ;

# which state goverment gives most funding ?
select state , avg(2015_2016_running) as funding  from funds_realsed_by_goverment
group by state order by funding desc;







