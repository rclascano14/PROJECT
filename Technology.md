# Technologies Used 

## Data Cleaning and Analysis
We will work in pandas ulitizing jupyter notebooks to extract the data from our database and perform additional analysis. We will mix the power of pandas and python to create additional features and filters for our project. The original dataset for batting has 22 columns, but there are more stats that we could create mathematically to enhance our machine learning models. We will look to use the sklearn packages to standardize the data as we get closer to running the model and once we can fully see what the datapoints are showing our team.

## Database Storage
We will use pgadmin to store our database. In our Conda environment we will use Flask and psycopg2 so that our database can interact with python. This will allow us to host the data in a web application where someone could filter for the hitting stats or salary of a certain player or certain years.

## Machine Learning
We will use the sklearn model package for our machine learning. We will use a Linear Regression model and our target value in our training set will be "Salary" which our model will predict from all the other features we are able to supply to try and determine what the salary will be for a player in 2015. We will fit the model using the StandardScaler package to transform and scale the data to help increase the model accuracy. 

## Dashboard
We will use Tableau to create visualizations using the dashboard and story capabilities to create our presentation and we will import our data from our database and pandas to create and tell the story of our data outputs.  
