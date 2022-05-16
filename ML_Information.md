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

