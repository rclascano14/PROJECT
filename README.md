# Baseball Salary Project
`Analyzing the correlation between hitting performance and salary for MLB athletes using machine learning models and using this correlation to predict future data.`

## Resources
- Jupyter Notebook
- Python
- Pandas
- Flask
- Psycopg2
- SQL
- PgAdmin4
- Tableau
- [Google Slides Presentation](https://docs.google.com/presentation/d/1H_cFUEjeqKyBYgi1mxI9yD7ji5-IQwog0N3KH_S9BRk/edit?usp=sharing")
- Data: batting.csv, batting_filtered.csv, batting_salary.csv, salary.csv, salary_filtered.csv

## Documentation
The <a href="https://github.com/rclascano14/PROJECT/tree/main/SQL%20Files" target="_blank">SQL Files</a> folder contains all the necessary scripts to create, filter and merge the databases used in this project.

This folder contains 3 main files:
- The document that contains the schema of the two main tables used in the database(batting.csv and salary.csv) is <a href="https://github.com/rclascano14/PROJECT/blob/main/SQL%20Files/schema.sql" target="_blank">schema.sql</a>
- The document that contains the filtering of these two tables from 2009 to 2014 is <a href="https://github.com/rclascano14/PROJECT/blob/main/SQL%20Files/filtering.sql" target="_blank">filtering.sql</a>
- The document that merges both filtered datasets is <a href="https://github.com/rclascano14/PROJECT/blob/main/SQL%20Files/merge_views.sql" target="_blank">merge_views.sql</a>

## Overview of Project

- Our project revolves around the topic of salaries in Major League Baseball(MLB) from 2009 to 2015 and the relationship that batting stats have in regards to a player's salary. We are going to look at the hitting stats for the years 2009-2014 to gain insights on both the hitting and salary stats. Once we have completed our extraction and transformation of the data, we will then test the 2015 data in a linear regression model to see how much of a correlation hitting performance has with the salary a player is paid. It is our hypothesis that there will be a very strong correlation between these two variables.

### Description and Goals of the Project

- We chose this topic because we all shared an interest in both sports and finance and one question that utilized both of these interests was the salary of athletes. We then narrowed that initial interest down to the sport of Baseball and specifically hitters because unlike their pitching counterparts, hitters play far more frequently and are almost always the highest paid players on the team. In order to complete this project our first order of business was simply to look at our dataset, which gave us salaries from 1985-2015. To narrow our scope and for the sake of relevance, we decided to focus on a 5 year period of 2009-2014 as our training data and the singular year of 2015 as our testing data. This would allow us enough information we believe to analyze the data and test our hypothesis.

### Questions we can look to answer

- Based on the hitting performance of a player, is there a strong correlation between hitting performance and how much they are paid?
- Is it possible to predict the salary of a player using a linear regression model with the data given?
- Given a players salary for 2015, was this player overpaid or underpaid?
- What teams were the most successful at avoiding overpaying players, and who had the most players who were overpaid?

### Description of the Dataset

- We pulled our Data from the Lahman's Baseball Datasets on SeanLahman.com. This website has baseball data from 1871-2021. This information had the hitting statistics we are using from 2009-2015 and the salary data from 2009-2015 as well. The hitting dataset had 22 columns and the salary dataset had 5 columns. They both shared two IDs which we could choose to merge on, and we chose to use the player_id column as they held unique IDs for each player in the dataset.

#### Base Metrics
These are the base metrics we obtained from Kaggle. These metrics do not require any calculation, however, these are the base for our analysis.
- 'year', 
- 'g' - games played in the season 
- 'ab'- at-bats in the season 
- 'r' - runs scored in the season 
- 'h' - hits in the season 
- 'double' 
- 'triple', 
- 'hr' - home runs in the season 
- 'rbi' - runs batted in during the season, 
- 'sb' - stolen bases
- 'cs' - caught stealing 
- 'bb' - walks in the season 
- 'so' - strikeouts in the season 
- 'ibb' - intentional walks in the season
- 'hbp' - hit by pitches in the season 
- 'sh' - sacrifice hits 
- 'sf' - sacrifice flies 
- 'g_idp' - grounded into double play 
- 'single' 

### Communication Procedures

- We are using the Slack platform for the majority of our communication. In addition, we are keeping in contact on a daily basis regarding progress, updates, and discussing any questions. Lastly, we are sharing work through the usage of Google Docs to work on documents collaboratively and we are actively particpating in classroom hours between 7-9 PM on Monday and Wednesdays to receive and assign tasks for the week.

## Results

## Summary
