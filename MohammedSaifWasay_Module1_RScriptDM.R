#Mohammed Saif Wasay
#NUID: 002815958
#ALY6040 
#Data Mining Aplications

#Module 1 Practice

cat("\014") # clears console
rm(list = ls()) # clears global environment
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE) # clears plots
try(p_unload(p_loaded(), character.only = TRUE), silent = TRUE) #clears packages
options(scipen = 100) # disables scientific notation for entire R session

#Loading Libraries
library(pacman)
library(dplyr)   # For data manipulation
library(ggplot2) # For data visualization
library(readr)   # For reading CSV files

file_path <- "C:/Users/Mohammed Saif Wasay/Documents/code/data/ds_salaries.csv"

# Load the dataset
df <- read_csv(file_path)

# Explore the dataset structure
glimpse(df)  # Provides an overview of the data types and structure
summary(df)  # Summary statistics for numerical and categorical variables

# Drop unnecessary column (Removing the first unnamed column)
df <- df %>% select(-1)

#checking missing values
missing_values <- colSums(is.na(df))
missing_values

# Calculate summary statistics for numerical columns
summary(df)

# Count unique values for categorical columns
df %>%
  summarise(
    unique_experience_level = n_distinct(experience_level),
    unique_employment_type = n_distinct(employment_type),
    unique_job_titles = n_distinct(job_title),
    unique_salary_currency = n_distinct(salary_currency),
    unique_employee_residence = n_distinct(employee_residence),
    unique_company_location = n_distinct(company_location),
    unique_company_size = n_distinct(company_size)
  )

# Create a histogram to visualize the distribution of salaries in USD
ggplot(df, aes(x = salary_in_usd)) +
  geom_histogram(binwidth = 10000, fill = "blue", color = "black") +
  ggtitle("Distribution of Salaries in USD") +
  xlab("Salary in USD") +
  ylab("Frequency") +
  theme_minimal()

# Create a bar plot to visualize the distribution of remote ratios
ggplot(df, aes(x = as.factor(remote_ratio))) +
  geom_bar(fill = "green", color = "black") +
  ggtitle("Distribution of Remote Work Ratio") +
  xlab("Remote Ratio") +
  ylab("Frequency") +
  theme_minimal()

# Create a bar plot for the top 10 most common job titles
df %>%
  count(job_title, sort = TRUE) %>%
  top_n(10) %>%
  ggplot(aes(x = reorder(job_title, n), y = n)) +
  geom_bar(stat = "identity", fill = "orange", color = "black") +
  coord_flip() +
  ggtitle("Top 10 Most Common Job Titles") +
  xlab("Job Titles") +
  ylab("Frequency") +
  theme_minimal()

# Check for duplicates in the dataset
df %>% 
  distinct() %>%
  summarise(duplicate_rows = n() < nrow(df))

# Identify potential outliers in salary using boxplot
ggplot(df, aes(y = salary_in_usd)) +
  geom_boxplot(fill = "lightblue", color = "black") +
  ggtitle("Boxplot of Salaries in USD") +
  ylab("Salary in USD") +
  theme_minimal()


# Experience level distribution
ggplot(df, aes(x = experience_level)) +
  geom_bar(fill = "purple", color = "black") +
  ggtitle("Distribution of Experience Levels") +
  xlab("Experience Level") +
  ylab("Count") +
  theme_minimal()

# Company size distribution
ggplot(df, aes(x = company_size)) +
  geom_bar(fill = "pink", color = "black") +
  ggtitle("Company Size Distribution") +
  xlab("Company Size") +
  ylab("Count") +
  theme_minimal()

# Salary comparison based on experience level
ggplot(df, aes(x = experience_level, y = salary_in_usd)) +
  geom_boxplot(fill = "cyan", color = "black") +
  ggtitle("Salary Distribution by Experience Level") +
  xlab("Experience Level") +
  ylab("Salary in USD") +
  theme_minimal()

