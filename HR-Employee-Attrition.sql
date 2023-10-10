USE HR_Employee_Attrition;

SELECT * FROM HR_Employee_Table;


-- This show that there are no NULL values in the datset --	
SELECT * 
	FROM [HR_Employee_Table ]
	WHERE Age is null
	or Attrition is null
	or BusinessTravel is null
	or DailyRate is null 
	or Department is null
	or DistanceFromHome is null 
	or Education is null
	or EducationField is null
	or EmployeeCount is null 
	or EmployeeNumber is null
	or EnvironmentSatisfaction is null
	or Gender is null
	or HourlyRate is null 
	or JobInvolvement is null
	or JobLevel is null
	or JobRole is null
	or JobSatisfaction is null
	or MaritalStatus is null
	or MonthlyIncome is null
	or MonthlyRate is null 
	or NumCompaniesWorked is null
	or Over18 is null
	or OverTime is null
	or PercentSalaryHike is null
	or PerformanceRating is null
	or RelationshipSatisfaction is null
	or StandardHours is null
	or StockOptionLevel is null
	or TotalWorkingYears is null
	or TrainingTimesLastYear is null
	or WorkLifeBalance is null
	or YearsAtCompany is null
	or YearsInCurrentRole is null
	or YearsSinceLastPromotion is null
	or YearsWithCurrManager is null

-- This Query drop redundants columns that would not be of help 
ALTER TABLE [HR_Employee_Table ]
DROP COLUMN DailyRate, EmployeeCount, HourlyRate, MonthlyRate, Over18, StandardHours, StockOptionLevel;


-- Total Numbers of Employees -- 
SELECT COUNT(DISTINCT EmployeeNumber) NumOfEmployees 
FROM [HR_Employee_Table ]


-- Total Number of Attrition 
SELECT COUNT(DISTINCT EmployeeNumber) as NumOfAttrition 
FROM [HR_Employee_Table ]
WHERE Attrition = 1


--Total Number of Retained Employees
SELECT COUNT(DISTINCT EmployeeNumber) as NumOfWorkingEmployees
FROM [HR_Employee_Table ]
WHERE Attrition = 0


-- Employees by Age
select age, count(DISTINCT EmployeeNumber) no_of_employee from HR_Employee_Table
where attrition = 1
group by age
order by age asc


-- Average MonthlyIncome by JobRole --
select JobRole, avg(monthlyincome)Average_Monthly_Income 
from [HR_Employee_Table ]
-- where attrition = 1
group by JobRole
order by Average_Monthly_Income desc



-- Average MonthlyIncome by JobLevel --
select JobLevel, avg(monthlyincome)Average_Monthly_Income 
from [HR_Employee_Table ]
-- where attrition = 1
group by JobLevel
order by Average_Monthly_Income desc


-- Average MonthlyIncome by Department --
select Department, avg(monthlyincome)Average_Monthly_Income 
from [HR_Employee_Table ]
-- where attrition = 1
group by Department
order by Average_Monthly_Income desc


-- Average MonthlyIncome by Education Field --
select Educationfield, avg(monthlyincome)Average_Monthly_Income 
from [HR_Employee_Table ]
-- where attrition = 1
group by EducationField 
order by Average_Monthly_Income desc


-- Average MonthlyIncome by Education Level --
select education, avg(monthlyincome)Average_Monthly_Income 
from [HR_Employee_Table ]
-- where attrition = 1
group by Education
order by Average_Monthly_Income desc


-- Average MonthlyIncome by Job Satisfaction  --
select JobSatisfaction, avg(monthlyincome)Average_Monthly_Income 
from [HR_Employee_Table ]
-- where attrition = 1
group by JobSatisfaction
order by Average_Monthly_Income desc


-- Attrition by Total Working Years --
select TotalWorkingYears, count(DISTINCT EmployeeNumber) no_of_employee 
FROM HR_Employee_Table 
where attrition =  1
GROUP BY TotalWorkingYears
order by TotalWorkingYears asc


-- Attrition by Department --
select Department, count(DISTINCT EmployeeNumber) no_of_employee
from [HR_Employee_Table ]
where attrition = 1
group by Department
order by Department;


-- Attrition by Gender --
select Gender, count(DISTINCT EmployeeNumber) no_of_employee
from [HR_Employee_Table ]
where attrition = 1
group by Gender
order by Gender;


-- Attrition by JobRole --
select JobRole, count(DISTINCT EmployeeNumber) no_of_employee
from [HR_Employee_Table ]
where attrition = 1
group by JobRole
order by no_of_employee desc;


-- Attrition by Marital Status --
select MaritalStatus, count(DISTINCT EmployeeNumber) no_of_employee
from [HR_Employee_Table ]
where attrition = 1
group by MaritalStatus
order by MaritalStatus;


-- Attrition by BusinessTravel
select BusinessTravel, count(DISTINCT EmployeeNumber) no_of_employee
from [HR_Employee_Table ]
where attrition = 1
group by BusinessTravel;


-- Attrition by EducationField
select EducationField, count(DISTINCT EmployeeNumber) no_of_employee
from [HR_Employee_Table ]
where attrition = 1
group by EducationField


-- Attrition by OverTime
select overtime, count(DISTINCT EmployeeNumber) no_of_employee
from [HR_Employee_Table ]
where attrition = 1
group by overtime


-- Employees by Education Level
select education, count(DISTINCT EmployeeNumber) no_of_employee
from [HR_Employee_Table ]
where attrition = 1
group by education


-- Attrition by Num Of Companies Worked 
select numcompaniesworked, count(DISTINCT EmployeeNumber) no_of_employee
from [HR_Employee_Table ]
where attrition = 1
group by numcompaniesworked


-- Attrition by Age 
select age, count(DISTINCT EmployeeNumber) no_of_employee
from [HR_Employee_Table ]
where attrition = 1
group by age


-- Attrition by Performance rating
select Performancerating, count(DISTINCT EmployeeNumber) no_of_employee
from [HR_Employee_Table ]
where attrition = 1
group by Performancerating


