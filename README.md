# # Clinical Patient Database Project - Exploratory Analysis and Normalization

This project involves **exploratory data analysis** and **data normalization** on a synthetic clinical patient dataset. The primary objective was to understand data distributions, identify missing values, and design a **normalized ER model** specific to this dataset.

## Project Context
- This project was conducted as part of a Database Management Systems course, focusing on:
  - **Exploratory Data Analysis:** Understanding demographic distributions and data patterns.
  - **Data Normalization:** Normalizing the dataset to **Third Normal Form (3NF)** to eliminate redundancy and maintain integrity.
  - **ER Modeling:** Designing an ER diagram tailored to this specific dataset.
- **Disclaimer:** The ER model is **data-specific** and was designed as an academic exercise. It is not intended to be a production-ready solution for hospital management systems.

---

## ER Diagram
The normalization process was achieved through multiple milestones:
- **Milestone 1:** Initial denormalized dataset with repetitive demographic attributes.
- **Milestone 2:** Partial normalization by separating dependent entities.
- **Milestone 3 and 4:** Full normalization to **Third Normal Form (3NF)** with lookup tables and relational constraints.

![ER Diagram](./er-model/er-diagram.png)

---

## Exploratory Data Analysis
Before normalization, exploratory analysis was performed to understand the data distribution and identify missing values. Key queries include:
1. **Demographic Distribution:** Analyzing patient demographics by gender, age, race, and ethnicity.
2. **Missing Values Analysis:** Calculating the percentage of missing data for key attributes.
3. **Statistical Summaries:** Descriptive statistics for healthcare expenses and coverage.

### Example Queries and Screenshots
Question 1	What is the percentage of patients missing information regarding passport number in each gender? 
* Percentage must be a number between 0-100 with 1 decimal place
MITRE SQL	SELECT GENDER,
ROUND(100.0 * SUM(CASE WHEN PASSPORT IS NULL THEN 1 ELSE 0 END) / COUNT(*), 1) AS missing_passport_percentage
FROM hc848.MITRE_PATIENT
GROUP BY GENDER;
Screenshot	 
Normalized SQL	

- **Result Screenshot:**
    ![Demographic Distribution](./analysis/screenshots/demographic_distribution.png)

- **Missing Values Query:**
    ```sql
    SELECT 
      GENDER, 
      ROUND(100.0 * SUM(CASE WHEN PASSPORT IS NULL THEN 1 ELSE 0 END) / COUNT(*), 1) AS Missing_Passport_Percentage
    FROM MITRE_PATIENT
    GROUP BY GENDER;
    ```
- **Result Screenshot:**
    ![Missing Values](./analysis/screenshots/missing_values.png)

---

## Key Features
- **Exploratory Analysis:**
  - Analyzed demographic distributions and missing values using **Subqueries, JOINs, Conditional CASE statements, GROUP BY**, and **Aggregation Functions**.
  - Visualized query results to understand data patterns and inconsistencies.
- **Data Normalization:**
  - **Milestone 1 and 2:** Partial normalization with dependent entities like Allergies, Immunizations, and Procedures.
  - **Milestone 3 and 4:** Full normalization to **Third Normal Form (3NF)** with lookup tables and relational constraints.
- **ER Modeling:**
  - Designed an ER diagram specific to this dataset using **Vertabelo**.
  - Established referential integrity using **Primary Keys (PKs)** and **Foreign Keys (FKs)**.

---

## Technologies Used
- **Database Management System:** Oracle SQL
- **ER Modeling Tool:** Vertabelo
- **Development Tools:** SQL Developer, Git

---

## How to Use
1. **Clone this repository:**
    ```bash
    git clone <repository-url>
    ```
2. **Navigate to the directory:**
    ```bash
    cd clinical-patient-database
    ```
3. **SQL Scripts Execution Order:**
    - `queries.sql` - To perform exploratory data analysis.
    - `schema.sql` - To set up the normalized database schema.
    - `migration.sql` - To migrate data from the denormalized to the normalized schema.

---

## Lessons Learned and Challenges
- **Exploratory Analysis:** Helped understand data distributions and missing values, guiding the normalization process.
- **Normalization to 3NF:** Reduced redundancy and improved data integrity, but required careful handling of complex relationships.
- **Challenges:** Ensuring referential integrity across multiple lookup tables and optimizing complex joins for analysis.

---

## Contact
For any queries or collaboration, feel free to reach out:
- **LinkedIn:** [Your LinkedIn Profile](https://linkedin.com/in/your-profile)
- **Portfolio:** [Your Portfolio Website](https://your-portfolio-link.com)
