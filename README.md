# Facebook Advertising Analysis
Social media application extends the channel for human to receive information and communication. Hence, Social Media application like Facebook and Instagram has becoming the latest trends. Facebook has been widely used by people around the globe and connecting its users and community. With the massive user base of Facebook, the advertising features of Facebook stands out a lot when it comes to helping businesses to reach their targeting customer. Thus, this project aimed to analyse the key factors that can affect the effectiveness of Facebook advertisement and predict the performance of an advertisement.

## Files
### Fuzzy C Mean (FCM) 
1. `dataProcess.m` preprocess the dataset, after execute the file, a file named `dataset.mat` will be generated. 
2. `fcmModel.m` : The main file for FCM Model
3. `dist.m` : Function to calculate the distance the data point in feature space
4. `member.m` : Function to calculate the membership values of data point
5. `defcm.m`: Function to calculate the center of each cluster and membership value

## Dataset
1. ad_id: unique ID for each advertisement.
2. xyz_campaign_id: an ID associated with each advertisement campaign of XYZ company.
3. fb_campaign_id: an ID associated with how Facebook tracks each campaign.
4. age: age of the person to whom the advertisement is shown.
5. gender: gender of the person to whom the add is shown
6. interest: a code specifying the category to which the person’s interest belongs (interests are as mentioned in the person’s Facebook public profile).
7. Impressions: the number of times the ad was shown.
8. Clicks: number of clicks on for that ad.
9. Spent: Amount paid by company xyz to Facebook, to show that ad.
10. Total conversion: Total number of people who enquired about the product after seeing the ad.
11. Approved conversion: Total number of people who bought the product after seeing the ad.

## Installation
Install the [Multi Class Confusion Matrix](https://www.mathworks.com/matlabcentral/fileexchange/60900-multi-class-confusion-matrix) applications created by Abbas Manthiri S in your Matlab to enable confusion matrix visualization
