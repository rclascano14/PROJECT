# Baseball Salary Project

## Resources
- Jupyter Notebook
- Python
- Pandas
- Flask
- Psycopg2
- SQL
- PgAdmin4
- Tableau
- Data: batting.csv, batting_filtered.csv, batting_salary.csv, salary.csv, salary_filtered.csv

## Overview of Project

- Our project revolves around the topic of salaries in Major League Baseball(MLB) from 2009 to 2015 and the relationship that batting stats have in regards to a player's salary. We are going to look at the hitting stats for the years 2009-2014 to gain insights on both the hitting and salary stats. Once we have completed our extraction and transformation of the data, we will then test the 2015 data in a linear regression model to see how much of a correlation hitting performance has with the salary a player is paid. It is our hypothesis that there will be a very strong correlation between these two variables.

### Description and Goals of the Project

- We chose this topic because we all shared an interest in both sports and finance and one question that utilized both of these interests was the salary of athletes. We then narrowed that initial interest down to the sport of Baseball and specifically hitters because unlike their pitching counterparts, hitters play far more frequently and are almost always the highest paid players on the team. In order to complete this project our first order of business was simply to look at our dataset, which gave us salaries from 1985-2015. To narrow our scope and for the sake of relevance, we decided to focus on a 5 year period of 2009-2014 as our training data and the singular year of 2015 as our testing data. This would allow us enough information we believe to analyze the data and test our hypothesis.

### Questions we can look to answer

- Based on the hitting performance of a player, is there a strong correlation between hitting performance and how much they are paid?
- Is it possible to predict the salary of a player using a linear regression model with the data given?
- Given a players salary for 2015, was this player overpaid or underpaid?
- What teams were the most successful at avoiding overpaying players, and who had the most players who were overpaid?
- 
### Description of the Dataset

- We pulled our Data from the Lahman's Baseball Datasets on SeanLahman.com. This website has baseball data from 1871-2021. This information had the hitting statistics we are using from 2009-2015 and the salary data from 2009-2015 as well. The hitting dataset had 22 columns and the salary dataset had 5 columns. They both shared two IDs which we could choose to merge on, and we chose to use the player_id column as they held unique IDs for each player in the dataset.

### Communication Procedures

- We are using the Slack platform for most of our communication. We are keeping in contact on a daily basis on progress, posting updates, and discussing any questions. We are also working through sharing on Google to work on documents collaboratively and using the classroom hours between 7-9 PM on Monday and Wednesdays to assign tasks for the week.

## Results

## Summary