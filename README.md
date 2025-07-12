# 💼 Exploratory Data Analysis: Mining Data Science Salaries 

This project provides a comprehensive exploratory data analysis (EDA) of a dataset focused on data science roles and corresponding salaries across the globe. The goal is to uncover insights related to job roles, remote work trends, salary distributions, and experience-level impacts on compensation.

---

## 📊 Dataset Overview

- **Total Records**: 607
- **Columns**: 12
- **Time Range**: 2020 to 2022
- **Key Features**: 
  - `job_title`, `experience_level`, `employment_type`
  - `salary_in_usd`, `remote_ratio`, `company_size`
  - `employee_residence`, `company_location`, `work_year`

---

## 🧪 Key EDA Insights

### ✔️ Cleanliness
- No missing values in the dataset — all 607 rows were complete.
- Salary values ranged from **$2,859** to **$600,000**, with some extreme outliers needing further investigation.

### 💰 Salary Distribution
- **Mean salary**: $112,297
- **Most salaries** fall between $60,000 and $150,000.
- Outliers: Salaries exceeding $500,000, possibly for executive roles or require further verification.

### 💻 Remote Work Trends
- High percentage of **100% remote jobs**, followed by 50% remote.
- Reflects global trends toward flexible work environments in tech.

### 📌 Role Distribution
- Most common job titles:
  - `Data Scientist`
  - `Machine Learning Engineer`
  - `Data Engineer`
- Indicates a focus on specific core roles in data science.

### 📈 Experience Level
- **Senior (SE)** and **Mid-Level (MI)** dominate.
- **Entry (EN)** and **Executive (EX)** roles are less frequent.
- Salary clearly increases with experience level — executives earn the highest median.

### 🏢 Company Size
- Most roles were in **medium-sized companies (M)**.
- Fewer positions in small (S) and large (L) companies.

---

## 📊 Visualizations

- **Histograms**: Salary distribution
- **Boxplots**: Salary vs. experience levels, salary outliers
- **Bar plots**: Job title frequencies, remote work percentages

---

## 🔍 Summary of Findings

- Salaries heavily influenced by **experience level**, **remote flexibility**, and **job role**.
- Shift toward remote-first roles in data science is evident.
- High outliers require additional validation and may represent top executive or specialized positions.

---

## 🧭 Next Steps

- Address extreme salary outliers (e.g., $30.4 million).
- Remove duplicates and standardize categorical formats.
- Augment dataset with external features like **industry**, **tenure**, or **region**.
- Apply feature engineering for predictive modeling (e.g., salary prediction).

---

## 📚 References

- R Documentation: [https://cran.r-project.org/doc/manuals/r-release/R-intro.html](https://cran.r-project.org/doc/manuals/r-release/R-intro.html)
- Mastering R Visualizations by Albusairi: [LinkedIn Article](https://www.linkedin.com/pulse/mastering-simple-r-visualizations-from-scatterplots-heat-albusairi/)
- Dataset Source: Goodreads (reference placeholder)

---

## 🧠 Author
**Mohammed Saif Wasay**  
*Data Analytics Graduate — Northeastern University*  
*Machine Learning Enthusiast | Passionate about turning data into insights*

🔗 [Connect with me on LinkedIn](https://www.linkedin.com/in/mohammed-saif-wasay-4b3b64199/)
