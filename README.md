# Anomaly Detection and Recommender Systems
## Implementing an anomaly detection algorithm and using collaborative filtering to build a recommender system

## Part One: Anomaly Detection 
detecting anomalous behaviours in server computers.

### Gaussian Distribution
Used to fit a model to the data's distribution

![image](https://user-images.githubusercontent.com/41659296/56093934-71e12380-5e9c-11e9-9e7a-d98e8fa1de80.png)

### Estimating the Gaussian Parameters
Mean:

![image](https://user-images.githubusercontent.com/41659296/56093937-77d70480-5e9c-11e9-9361-4cbfff4d784d.png)

Variance:

![image](https://user-images.githubusercontent.com/41659296/56093942-7efe1280-5e9c-11e9-8d82-a0f42ec4171e.png)


### Selecting the threshold value epsilon using F1 Score 
The F1 score is calculated using the precision and recall values:

![image](https://user-images.githubusercontent.com/41659296/56094018-46126d80-5e9d-11e9-8988-221c17b37c3f.png)

Where precision and recall are defined as:

![image](https://user-images.githubusercontent.com/41659296/56094020-4ad72180-5e9d-11e9-86ab-f99b700837af.png)


## Part Two: Movie Recommendation System
Implementing a collaborative filtering learning algorithm and applying it to a movie dataset.
Collaborative filtering is able to learn its parameters based on multiple data sources. The objective of collaborative ﬁltering here is to predict movie ratings for the movies that users have not yet rated.

Collaborative Filtering Cost Function (with regularization:

![image](https://user-images.githubusercontent.com/41659296/56094127-80c8d580-5e9e-11e9-8309-51ce3043915e.png)

Gradient's:


![image](https://user-images.githubusercontent.com/41659296/56094136-99d18680-5e9e-11e9-9082-93582fd432db.png)



Program based on Stanford's Machine Learning Course.
