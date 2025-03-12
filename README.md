# Census Data Data Analysis and Visualization Project

## Overview
This project explores the features in census data to determine the key factors influencing whether a person earns more than $50K per year. The analysis is based on the UCI Machine Learning Repository's census dataset, which was extracted from the 1994 Census database.

## Objective
We aim to identify which features have the most significant impact in predicting whether an individual earns >50K or <=50K annually. This analysis can be valuable for organizations in areas such as targeted advertising, financial planning, and social research.

## Data Overview
The dataset originates from the UCI Machine Learning Repository and was contributed by Ron Kohavi and Barry Becker. It contains a cleaned subset of records meeting the following conditions:
- Age > 16
- Adjusted Gross Income (AGI) > 100
- Final weight (AFNLWGT) > 1
- Hours worked per week (HRSWK) > 0

The dataset was primarily designed for a classification task to predict income levels, making it relevant for machine learning applications.

## Featureset Exploration
The dataset consists of the following attributes:

- age: Continuous variable representing age.
- workclass: Categorical variable with values such as Private, Self-employed, Government, etc.
- education: Categorical variable representing education level.
- education-num: Continuous variable indicating years of education.
- marital-status: Categorical variable with values such as Married, Divorced, Never-married, etc.
- occupation: Categorical variable describing the type of job.
- relationship: Categorical variable indicating relationship status within a household.
- race: Categorical variable with values such as Black, White, Asian-Pac-Islander, etc.
- sex: Categorical variable indicating gender (Male/Female).
- capital-gain: Continuous variable representing capital gains.
- capital-loss: Continuous variable representing capital losses.
- hours-per-week: Continuous variable representing weekly work hours.
- native-country: Categorical variable indicating the country of origin.

## Usage
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/census-data-exploration.git
   ```
2. Install dependencies (if applicable).
3. Run the analysis scripts to explore the dataset and identify influential features.

## License
This project follows the [MIT License](LICENSE).

---

