USE bank_project;

SELECT COUNT(*) AS Total_Customers
FROM european_bank;
SELECT COUNT(*) AS Churned_Customers
FROM european_bank
WHERE Exited = 1;
SELECT COUNT(*) AS Retained_Customers
FROM european_bank
WHERE Exited = 0;
SELECT
    ROUND(AVG(Exited) * 100, 2) AS Churn_Rate;
    SELECT
    ROUND(AVG(Exited) * 100, 2) AS Churn_Rate
FROM european_bank;
SELECT
    Geography,
    COUNT(*) AS Total_Customers
FROM european_bank
GROUP BY Geography
ORDER BY Total_Customers DESC;
SELECT
    Geography,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(AVG(Exited) * 100, 2) AS Churn_Rate
FROM european_bank
GROUP BY Geography
ORDER BY Churn_Rate DESC;
SELECT
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 45 THEN '30-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+'
    END AS Age_Group,
    COUNT(*) AS Total_Customers
FROM european_bank
GROUP BY Age_Group;
SELECT
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 45 THEN '30-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+'
    END AS Age_Group,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(AVG(Exited) * 100, 2) AS Churn_Rate
FROM european_bank
GROUP BY Age_Group
ORDER BY Churn_Rate DESC;
SELECT
    Gender,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(AVG(Exited) * 100, 2) AS Churn_Rate
FROM european_bank
GROUP BY Gender
ORDER BY Churn_Rate DESC;
SELECT
    CASE
        WHEN CreditScore < 600 THEN 'Low'
        WHEN CreditScore BETWEEN 600 AND 749 THEN 'Medium'
        ELSE 'High'
    END AS Credit_Band,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(AVG(Exited) * 100, 2) AS Churn_Rate
FROM european_bank
GROUP BY Credit_Band
ORDER BY Churn_Rate DESC;
SELECT
    CASE
        WHEN Tenure <= 3 THEN 'New (0-3 Years)'
        WHEN Tenure BETWEEN 4 AND 7 THEN 'Mid-term (4-7 Years)'
        ELSE 'Long-term (8-10 Years)'
    END AS Tenure_Group,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(AVG(Exited) * 100, 2) AS Churn_Rate
FROM european_bank
GROUP BY Tenure_Group
ORDER BY Churn_Rate DESC;
SELECT
    CASE
        WHEN Balance = 0 THEN 'Zero Balance'
        WHEN Balance < 100000 THEN 'Low Balance'
        ELSE 'High Balance'
    END AS Balance_Group,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(AVG(Exited) * 100, 2) AS Churn_Rate
FROM european_bank
GROUP BY Balance_Group
ORDER BY Churn_Rate DESC;
SELECT
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    COUNT(*) - SUM(Exited) AS Retained_Customers,
    ROUND(AVG(Exited) * 100, 2) AS Overall_Churn_Rate
FROM european_bank;
SELECT
    Gender,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(AVG(Exited) * 100, 2) AS Churn_Rate
FROM european_bank
GROUP BY Gender
ORDER BY Churn_Rate DESC;
SELECT
    Geography,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(AVG(Exited) * 100, 2) AS Churn_Rate
FROM european_bank
GROUP BY Geography
ORDER BY Churn_Rate DESC;
SELECT
    COUNT(*) AS High_Value_Customers,
    SUM(Exited) AS High_Value_Churners,
    ROUND(AVG(Exited) * 100, 2) AS High_Value_Churn_Rate
FROM european_bank
WHERE Balance > 100000;
SELECT
    CASE
        WHEN IsActiveMember = 1 THEN 'Active'
        ELSE 'Inactive'
    END AS Member_Status,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(AVG(Exited) * 100, 2) AS Churn_Rate
FROM european_bank
GROUP BY Member_Status
ORDER BY Churn_Rate DESC;
SELECT
    Geography,
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 45 THEN '30-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+'
    END AS Age_Group,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(AVG(Exited) * 100, 2) AS Churn_Rate
FROM european_bank
GROUP BY Geography, Age_Group
ORDER BY Geography, Churn_Rate DESC;
    
    
