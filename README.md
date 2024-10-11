# AI-Salaries-Analysis-Project-Using-R-and-Tableau
## Overview
The AI Salaries Analysis project analyzes a dataset of salaries for professionals in the AI industry. The project aims to uncover key trends and insights related to salary distribution, the impact of experience level, employment type, and company size on salary, as well as the evolution of experience levels and remote work trends over time. The project is conducted using R for data cleaning, analysis, and visualization, and Tableau for dashboard creation.

## Objectives
This analysis addresses the following key questions:

* What is the average salary of AI professionals across different experience levels?
* How do various employment types (full-time, part-time, freelance, contract) affect salary and remote work opportunities?
* How does company size (small, medium, large) influence the salary of AI professionals?
* What are the top-paying job titles in the AI industry, and how do they compare across experience levels?
* How has the distribution of experience levels (Entry, Mid, Senior, Executive) changed over the years?
* What are the trends in remote work ratios across different employment types?

## Dataset
* Dataset Name: Ai-salaries.csv
* Dataset Description: The dataset contains salary data for AI professionals, along with additional features like job title, experience level, employment type, remote work ratio, and company size.
* Key Columns:
  * salary_in_usd: AI professionals' salary in USD.
  * experience_level: Experience level (Entry, Mid, Senior, Executive).
  * job_title: Title of the job.
  * employment_type: Type of employment (full-time, part-time, freelance, contract).
  * remote_ratio: Percentage of remote work allowed.
  * company_size: Company size (Small, Medium, Large).

## Steps Performed
* 1. Data Import and Cleaning (R)
  * Data Import: The dataset was loaded into R using the readr library.
  * Data Cleaning:
  * Removing Duplicates: The dplyr library was used to identify and remove duplicate rows.
  * Handling Missing Values: The dataset was checked for null values, and none were found.
* 2. Exploratory Data Analysis (EDA)
  * Salary Distribution: Visualized using a histogram to understand the spread of salaries.
  * Experience Level Distribution: Bar plot showing the distribution of experience levels among AI professionals.
  * Top 10 Job Titles by Salary: Calculated the average salary for each job title and visualized the top 10 highest-paying job titles using a bar plot.
* 3. Visualization and Dashboard Creation (Tableau)
A comprehensive Tableau dashboard was created to present the key insights visually:
  * Average Salary by Experience Level: Displayed the relationship between experience level and salary.
  * Remote Work by Employment Type: Visualized remote work opportunities across different employment types.
  * Company Size Distribution: A pie chart visualizing the distribution of AI professionals across different company sizes.
  * Experience Levels Over Time: A line chart showing trends in experience levels (Entry, Mid, Senior, Executive) over the years.

## Insights and Key Findings
* **Salary Trends**: Executive-level professionals earn the highest salaries, with an average exceeding $200,000, followed by Senior-level professionals. Entry-level employees earn significantly lower salaries, averaging around $60,000.
* **Remote Work**: Freelancers have the highest remote work ratio (~60%), while full-time employees have a lower ratio. Contract and part-time employees also show substantial remote work opportunities.
* **Company Size Influence**: Most AI professionals work in medium-sized companies (51–250 employees), though large companies (250+ employees) also employ many high-paid professionals.
* **Top-paying Job Titles**: "AI Developer," "Research Engineer," and "Data Scientist" are the top-paying job titles, with salaries exceeding $150,000.
* **Experience Trends**: Senior and Executive roles have been increasing in recent years, indicating growing demand for experienced professionals in the AI industry.

## Conclusion
The AI Salaries Analysis project provides critical insights into salary dynamics in the AI industry. The findings highlight the importance of experience, job title, and company size in determining salary levels. Freelancers enjoy the highest remote work ratios, and senior professionals are in growing demand. These insights are valuable for both AI professionals seeking to navigate their career paths and employers looking to understand salary trends and attract top talent.

## Files in the Repository
* Ai-salaries.csv: Original dataset used for analysis.
* cleaned_Ai-salaries.xlsx: Cleaned version of the dataset after processing in R.
* R Code File: R script containing data cleaning, EDA, and visualizations.
* Tableau Dashboard.twb: Tableau workbook containing the final interactive dashboard.
