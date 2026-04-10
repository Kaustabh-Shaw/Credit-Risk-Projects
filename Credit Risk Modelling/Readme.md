# Credit Risk Modelling

## Project Overview

This project focuses on building a Credit Risk Modelling framework to quantify potential losses in a loan portfolio using key risk parameters:

- Probability of Default (PD)
- Loss Given Default (LGD)
- Exposure at Default (EAD)

The model helps estimate Expected Loss (EL) and supports better decision-making in credit risk management.

## Objectives

- Calculate Expected Loss (EL) using risk parameters
- Segment customers based on credit risk profiles
- Analyze impact of income, credit score, and loan characteristics
- Build an interactive Power BI dashboard for risk monitoring

## Methodology

1. Data Preparation

- Cleaned and structured dataset using Excel
- Handled missing values and inconsistencies
- Created derived fields like income bands and credit score segments


2. Risk Modelling Approach

The core formula used:

Expected Loss (EL) = PD × LGD × EAD

- PD (Probability of Default): 0.17
- LGD (Loss Given Default): 0.50
- EAD (Exposure at Default): 446M
- EL (Expected Loss): 37.96M


3. Dashboard Development (Power BI)

Developed an interactive dashboard to visualize:

- Expected Loss distribution
- Exposure trends over time
- Risk segmentation across customers


## Tools & Technologies

- Excel = Data cleaning & preparation
- SQL = Data extraction and transformation
- Power BI = Dashboard & visualization


## Dashboard Features

- KPI cards (PD, LGD, EAD, Expected Loss)
- Risk segmentation by credit score
- Monthly exposure trend analysis
- Income-based loss distribution
- Loan status breakdown

## Future Improvements

- Implement machine learning models for PD prediction
- Add scenario analysis & stress testing
- Incorporate real-time data pipelines

## Conclusion

This project demonstrates a practical implementation of credit risk modelling concepts using real-world style data and visualization tools. It highlights how financial institutions can estimate potential losses and identify high-risk segments for better portfolio management.

