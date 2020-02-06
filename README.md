# Clustering_Project
1000ml Unit 2 Project doing agglomerative clustering on a grocery store database

Problem Statement: Looking at the Grocery Database use clustering algorithms to examine customer behavior for the purpose of changing promotions and advertising

Outcomes Predictions:
I predicted there would larger differences between the lifestages, but lifetsgaes actually ended up behaving pretty similarily

Data Acquisition: Signed into my SQL Workbench and obtained data from 1000ml SQL database

Data Preparation in SQL: 
- Drop Customers with null id’s
- Group transactions by basket, sorted by customer id
- Join other tables onto the grouped transaction table
- Filter out undefined baskets and customer _XX
- Get 50,000 subsample for each life stage output to csv file

Now locally we ...
- Determine time between visits by grouping by customer id and calculating difference between times
- Then we dummy the categorical variables and do a group by customer. Then we do a scaling and PCA
-Repeat Above for each Life Stage

Universe Description:
Subsample of customers (all with non-null ids), grouped by their baskets and the associated stats for their baskets, left joined in time information and customer information. 

Modeling:
- Run Agglomerative Clustering on combined numberical and categorical variables at the customer level

Model Evaluation:
- Look at the silhoutte score for mulitple cluster N’s and linkage types and chooose the best one to apply

Deliverable:
- Give presentation outlining the similarities and differences between clusters for each life stage
- Upload code to Github
- Complete Unit Evaluation, Outine and Project Reflection
