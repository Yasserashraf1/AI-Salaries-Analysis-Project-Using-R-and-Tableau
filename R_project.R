#1. Importing the Dataset
library(readr)
# read my data
my_data <- read.csv('C:\\Summer2024\\DEPI\\FInalProject\\R_project\\Ai-salaries.csv')
head(my_data)
summary(my_data)
#number of rows
print(nrow(my_data))

#2. Cleaning the Data
# cleaning phase
#1-duplicated
sum(duplicated(my_data))
library(dplyr)
my_data <- distinct(my_data)
sum(duplicated(my_data))
#2-null values
sum(is.na(my_data))
print(nrow(my_data))

#3. Exploratory Data Analysis (EDA) & Visualization
# Load ggplot2
library(ggplot2)

# Salary Distribution
ggplot(my_data, aes(x = salary_in_usd)) +
  geom_histogram(binwidth = 10000, fill = "blue", color = "black") +
  theme_minimal() +
  labs(title = "Salary Distribution", x = "Salary in USD", y = "Count")

# Experience level distribution
ggplot(my_data, aes(x = experience_level)) +
  geom_bar(fill = "green", color = "black") +
  theme_minimal() +
  labs(title = "Experience Level Distribution", x = "Experience Level", y = "Count")



# 1. Calculate the average salary for each job title
avg_salary_job <- my_data %>%
  group_by(job_title) %>%
  summarise(salary_in_usd = mean(salary_in_usd, na.rm = TRUE))

# 2. Select the top 10 job titles by average salary
top_n_jobs <- avg_salary_job[order(avg_salary_job$salary_in_usd, decreasing = TRUE), ][1:10, ]

# 3. Visualize the top 10 job titles by average salary
ggplot(top_n_jobs, aes(x = reorder(job_title, salary_in_usd), y = salary_in_usd)) +
  geom_col(fill = "purple") +
  coord_flip() +
  theme_minimal() +
  labs(title = "Top 10 Job Titles by Average Salary", x = "Job Title", y = "Average Salary in USD") +
  theme(
    plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),
    axis.title = element_text(size = 12),
    axis.text.y = element_text(size = 10),    # Larger font size for fewer job titles
    axis.text.x = element_text(size = 10),
    plot.margin = margin(10, 10, 10, 10)
  )


library(writexl)
# Export the dataset to an Excel file
write_xlsx(my_data, "C:\\Summer2024\\DEPI\\FInalProject\\R_project\\cleaned_Ai-salaries.xlsx")



