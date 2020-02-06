# Clustering_Project

1000ml Unit 2 Project doing agglomerative clustering on a grocery store database

Problem Statement: Looking at the Grocery Database use clustering algorithms to examine customer behavior for the purpose of changing promotions and advertising

Outcomes Predictions:
I predicted there would larger differences between the lifestages, but lifetsgaes actually ended up behaving pretty similarily

Data Acquisition: Signed into my SQL Workbench and obtained data from 1000ml SQL database

/sql_files -> /csv_files
Data Preparation in SQL: 
- Drop Customers with null id’s
- Group transactions by basket, sorted by customer id
- Join other tables onto the grouped transaction table
- Filter out undefined baskets and customer _XX
- Get 50,000 subsample for each life stage output to csv file

Universe Description:
Subsample of customers (all with non-null ids), grouped by their baskets and the associated stats for their baskets, left joined in time information and customer information. 

Modeling:

00_grocery_cluster_try.ipynb
- First determine which clustering method works best for the data

01_grocery_cluster_cust.ipynb
- Run agglomertive clustering on all customers and see what comes out

02_XX_Cluster.inpyb

- Determine time between visits by grouping by customer id and calculating difference between times
- Then we dummy the categorical variables and do a group by customer. Then we do a scaling and PCA
- Run Agglomerative Clustering on combined numberical and categorical variables at the customer level
- Repeat Above for each Life Stage

03_Store_Analysis.inpyb
- Do the same as above but on a store format level instead of on a customer level

04_Group_Correlations.inpyb
- Take the mean differences between groups created by 02_XX_Cluster and plot a heat map of them

Model Evaluation:
- Look at the silhoutte score for mulitple cluster N’s and linkage types and chooose the best one to apply

Deliverable:
- Give presentation outlining the similarities and differences between clusters for each life stage
- Upload code to Github
- Complete Unit Evaluation, Outine and Project Reflection