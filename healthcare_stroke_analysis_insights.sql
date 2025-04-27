create database stroke_db;
use stroke_db;

-- 1. Gender-based Stroke Distribution
SELECT 
    gender,
    COUNT(*) AS total_patients,
    SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) AS stroke_patients,
    ROUND(SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS stroke_percentage
FROM 
    `cleaned_healthcare_dataset_stroke.csv`
GROUP BY 
    gender;


-- 2. Age-based Stroke Distribution
SELECT 
    CASE
        WHEN age BETWEEN 0 AND 20 THEN '0-20'
        WHEN age BETWEEN 21 AND 40 THEN '21-40'
        WHEN age BETWEEN 41 AND 60 THEN '41-60'
        WHEN age BETWEEN 61 AND 80 THEN '61-80'
        WHEN age BETWEEN 81 AND 100 THEN '81-100'
        ELSE 'Unknown'
    END AS age_group,
    COUNT(*) AS total_patients,
    SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) AS stroke_patients,
    ROUND(SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS stroke_percentage
FROM 
    `cleaned_healthcare_dataset_stroke.csv`
GROUP BY 
    age_group;


-- 3. Stroke Distribution by Smoking Status
SELECT 
    smoking_status,
    COUNT(*) AS total_patients,
    SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) AS stroke_patients,
    ROUND(SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS stroke_percentage
FROM 
    `cleaned_healthcare_dataset_stroke.csv`
GROUP BY 
    smoking_status;
    

-- 4. Stroke Distribution by Hypertension and Heart Disease
SELECT 
    hypertension,
    heart_disease,
    COUNT(*) AS total_patients,
    SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) AS stroke_patients,
    ROUND(SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS stroke_percentage
FROM 
    `cleaned_healthcare_dataset_stroke.csv`
GROUP BY 
    hypertension, heart_disease;



-- 5. Average BMI and Glucose Levels by Stroke Status
SELECT 
    stroke,
    AVG(bmi) AS avg_bmi,
    AVG(avg_glucose_level) AS avg_glucose
FROM 
    `cleaned_healthcare_dataset_stroke.csv`
GROUP BY 
    stroke;


-- 6. Stroke Rate by Work Type
SELECT 
    work_type,
    COUNT(*) AS total_patients,
    SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) AS stroke_patients,
    ROUND(SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS stroke_percentage
FROM 
    `cleaned_healthcare_dataset_stroke.csv`
GROUP BY 
    work_type;


-- 7. Stroke Rate by Gender and Hypertension
SELECT 
    gender,
    hypertension,
    COUNT(*) AS total_patients,
    SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) AS stroke_patients,
    ROUND(SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS stroke_percentage
FROM 
    `cleaned_healthcare_dataset_stroke.csv`
GROUP BY 
    gender, hypertension;


-- 8. Correlation between Stroke and BMI (Categorized)
SELECT 
    CASE
        WHEN bmi < 18.5 THEN 'Underweight'
        WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'Normal Weight'
        WHEN bmi BETWEEN 25 AND 29.9 THEN 'Overweight'
        WHEN bmi >= 30 THEN 'Obese'
        ELSE 'Unknown'
    END AS bmi_category,
    COUNT(*) AS total_patients,
    SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) AS stroke_patients,
    ROUND(SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS stroke_percentage
FROM 
    `cleaned_healthcare_dataset_stroke.csv`
GROUP BY 
    bmi_category;


-- 9. Age and Stroke Interaction (Using Age Groups)
SELECT 
    CASE
        WHEN age BETWEEN 0 AND 20 THEN '0-20'
        WHEN age BETWEEN 21 AND 40 THEN '21-40'
        WHEN age BETWEEN 41 AND 60 THEN '41-60'
        WHEN age BETWEEN 61 AND 80 THEN '61-80'
        WHEN age BETWEEN 81 AND 100 THEN '81-100'
        ELSE 'Unknown'
    END AS age_group,
    COUNT(*) AS total_patients,
    SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) AS stroke_patients,
    ROUND(SUM(CASE WHEN stroke = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS stroke_percentage
FROM 
    `cleaned_healthcare_dataset_stroke.csv`
GROUP BY 
    age_group;

