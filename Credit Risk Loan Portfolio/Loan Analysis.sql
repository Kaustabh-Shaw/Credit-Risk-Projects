create database Credit_Risk;
use Credit_Risk;

select * from loans;


alter table loans
rename column int_rate to Interest_rate;

update Loans
set credit_score= (fico_range_low+fico_range_high)/2
where member_id between 101 and 100562;

alter table loans
rename column risk_category to Risk_segmentation;

-- Section 1 : Portfolio Overview

-- Total loans

select count(*) as total_loans
from loans;

-- Total Portfolio Exposure

select sum(loan_amount) as Total_Exposure 
from loans;

-- Average Loan
select avg(loan_amount) as Average_Loan 
from loans;

-- Section 2 : Default Risk

-- Default Rate

SELECT SUM(CASE 
             WHEN loan_status IN ('Charged Off','Default') THEN 1 ELSE 0 
             END) * 1.0 / COUNT(*) AS Default_Rate
FROM loans;

-- Section 3 : Risk Segmentation Analysis

-- High Risk Borrowers

select * from loans
where credit_score<600 and DTI>20;

-- Loan issued and amount on the basis of risk segmentation

select risk_segmentation,
count(*) as total_loans,
sum(loan_amount) as total_exposure
from loans
group by risk_segmentation;

-- High Risk Exposure

select * from loans
where risk_segmentation="High Risk" and DTI>30;

-- Section 4 : Time Based Analysis

-- Loans issued over time

select date_format(issue_date,"%y-%m") as month,
count(*) as Total_loans
from loans
group by month
order by month desc;

-- Interest rate over time

select date_format(issue_date,"%y-%m") as month,
sum(Interest_rate)/count(*) as Default_rate
from loans
group by month
order by month desc;




