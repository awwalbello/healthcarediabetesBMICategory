ALTER TABLE HealthcareDiabetes1
ADD BMI_Category VARCHAR(50);

UPDATE HealthcareDiabetes1
SET BMI_Category = 
    CASE
        WHEN BMI >= 18 AND BMI <= 24.9 THEN 'Normal weight'
        WHEN BMI >= 25 AND BMI <= 29.9 THEN 'Overweight'
        WHEN BMI >= 30 THEN 'Obese'
        ELSE 'Critical Medical Emergency' -- Handle any other cases
    END;

SELECT * FROM HealthcareDiabetes1
WHERE BMI_Category = 'Critical Medical Emergency'

--Number of patients in need of immediate attention
SELECT COUNT(*) UnderweightCount
FROM HealthcareDiabetes1
WHERE BMI_Category = 'Critical Medical Emergency'

SELECT pregnancies, AVG(age) AS average_age
FROM healthcarediabetes1
GROUP BY Pregnancies;
