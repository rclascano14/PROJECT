# Machine Learning Segment

## Description of preliminary data preprocessing
- The first step in the preprocessing was to check to see if any data was missing. Our dataset had no missing values, but once we started to engineer new stats, there were cases where a number was divided by 0 thus creating NaNs and so we filled those with zeroes. Then we decided to bin the years (even though they were viewed as integers) into groups of 0,1,2, etc. We considered normalizing the data, but decided against it as our model standardizations the data before testing.
 
## Description of preliminary feature engineering and preliminary feature selection process
 
- The feature engineering process involved creating additional columns based on the data that was given and giving more information to our dataset. The first step was to create more columns that took advantages of the stats present.
 
- Our set while having a hit column did not show how many of those hits were singles, and also our dataset did not combine all of a player's plate appearances (as at-bats leaves out any non-contact event, walks, sacrifices). This was another column that was created.

- In the world of baseball there has been a growth in certain stats that have proven to be a strong indicator of a batter's value. These stats were also created and added to the dataset and are listed below and a further detail of the stats can be found [here](link)
  - slg %
  - obp 
  - batting avg
  - tb
  - ops
  - rc
  - babip
- We created a couple heatmaps to look at correlation to try and evaluate our dataset further, and a question was posed, "Could we gather any information from the team_ids in relation to salary and so after creating both a new dataset and a heatmap, we found some teams (such as NYA and PHI) did have a little bit of correlation. So after using the get_dummies function of pandas we chose to include those columns as well.

- The reason for adding additional stats is our dataset has a significant number of players (25%) who have 1 or less at-bat, and so by adding additional features we hoped that the ML model could perceive the values more clearly with additional information.

## Splitting the training and testing sets 

- The data was initially split into the standard 75-25% split that skllearn defaults to. We used the salary feature as the one for testing. After running additional tests and playing with the information. We decided to adjust that to 80-20% as it increased our testing % to 18.6% from 17.3%.


## Model Choice

- We chose a linear regression model because we had a very clear relationship we wanted to look at with hitting stats and their relationship to salary. So if we could provide hitting statistics as our independent variable, how would that affect our dependent variable of salary? We were able to gather this information and with the simplistic nature of implementing a linear regression model we moved forward with this as our Machine Learning Model.

### Pros of linear regression models
- The benefit of using the linear regression model is first its simplicity. It is very easy to put together and interpret the relationship. 

- The simple nature of a linear regression model makes it very friendly from a computional aspect as it is able to run large amount of data in a very quick and efficient manner.

- Linear regression is prone to over-fitting, but it can be fixed using reduction techniques. 

### Cons of linear regression models

- The biggest issue with using this model is it assumes there is a straight-line relationship between the independent and dependent variables and in real life problems this is rarely that simple.

- Another con that affects linear regression models, they are greatly affected by outliers. For example, in our model intentional walks, "ibb" had a number of outliers and when removed it greatly hurt our model's accuracy. So the model one way or another is swayed by these powerful outliers.

- Optimization can prove to be very time consuming and there is a risk of overfitting the model. In using the reduction features to combat overfitting you will risk overfitting irrevelant features and this could be very time-consuming and point your data in the wrong direction. 

## Model Choice Change

- Our original linear regression model struggled to find a correlation between hitting statistics and the salary of hitters. This could be due to there are a number of additional factors that affect pay for a hitter. This led our team to take a look at the data we had and we felt that we could classify players on whether they would be considered "Unpaid" or "Overpaid". 

- The first thing we did was determine how to set the parameter that would be the measurement for how we would test this statement. We knew we wanted to use salary, but after looking at our data it was very skewed to the left. So for each season we took the median instead of the mean. This is the preferred choice with skewed datasets such as ours. 

- Then we created two new columns. After getting the median amount for each year, each player was classified as either "highly paid" or "under paid". This would be the question, our model would try and answer, can we classify correctly, if a player was "highly paid" or "under paid" from the hitting statistics?

- We kept our original Data and created stats, we also added 
  - extra base hits (xbh) as the model seemed to find more information in power categories
  - isolated power (iso) which is another power stat that we hoped would give our model more clarity.
  - walks per plate appearance (bb/pa) and strikeouts per plate appearance (so/pa)

- We also removed anyone who did not have an at-bat in our dataset. This was about 20% of our data. This allowed us to remove almost all pitchers and would leave only those who hit on an infrequent basis. 

- Our original model used StandardScaler, but MinMaxScaler is supposed to handle datasets with a larger number of outliers which is more in line with our dataset. 

- We chose a classification model and specifically Logistic Regression because as we wanted to answer the question of could our model classify someone as over or under the median and its simplistic implentation led us to going towards this direction. We felt that our data would struggle to find a way to pintpoint a numerical prediction, but the data could answer classification questions better.

### Pros of logistic regression models

- The most benefical aspect of the model like its Linear counterpart is its simplicity. This also leads to it needing less computing power, and due to this it can be often a model to use to measure performance when starting out.

- The model allows for the importance of features to be viewed. We can see how important a feature might be or if it lacks a connection with the question. 

- Classification is using quite often with these types of model and it can be used not only very well in singular class, but with multi-class classification when needed.  

### Cons of logistic regression models

- Non-linear problems can't be solved with logistic regression due to its linear nature, and this often leads to having to engineer more features and transforming the data to answer the questions someone might pose.

- Logistic regression requires a large dataset and also a large amount of training examples for it to succeed in classification.

- Due to the simplistic nature of the model, it struggles with complex relationships. This model can be outperformed quite easily by Neural Networks if you are willing to invest the time and capital to create one.

## Training of Our New Model

- As stated earlier we chose to use MinMaxScaler as this package deals with data that has a larger amount of outliers. 

- We removed the salary column, and we also removed the columns stating if a player was highly paid or under paid. 

- The training and testing was split into a 75/25 split after multiple attempts to see how this affected the results.

### Results of Our Model. 

- In our Logistic Regression model we had
  - True Positive(TP)  =  327
  - False Positive(FP) =  202
  - True Negative(TN)  =  263
  - False Negative(FN) =  138

- This led to an accuracy of the binary classification of 63.4%.

- We looked into other classification models and they produced the below results.
![](https://github.com/rclascano14/PROJECT/blob/main/Resources/Model_Accuracy.PNG)

- We are happy with the current results and may look to try and further see if we can remove pitchers in the datasets as they have salaries that will cause issues for our model. We may also look to remove features who have no value and are just creating noise. 
