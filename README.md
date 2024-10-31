# Customer Segmentation for a Subscription Service

[Project Overview](#project-overview) 

[Problem](#problem)

[Dataset Used](#dataset-used)

[Tools Used](#tools-used)

[Process](#process)

[Dashboard Overview](#dashboard-overview)

[Exploratory Data Analysis](#exploratory-data-analysis)

[Data Visualization](#data-visualization)

[Inferences](#inferences)

[Conclusion](#conclusion)

[Tables](#tables)


### Project Overview
---
An Internet Provider Company seeks to obtain the comprehensive analysis of its customer data for its subscription service across a defined period to gain valuable insights into customer segmentation & trends, customers behavior, track subscription types, key trends in cancellations & renewals and regional performances.

### Problem
---
This project involves analyzing customer data for a subscription service to identify segments and trends. The goal is to understand customer behavior, track subscription types, and identify key trends in cancellations and renewals
In this project, I was tasked with;
1. Analyzing Customer data for a subscription service
2. Exploring Customer data to uncover key insights such as:
   - Customers Subscription Patterns,
   - Regional Performances
   - Total Revenue
   - Average Revenue
   - BestPerforming Customers
   - Average subscription duration
   - Key trends in cancellations(Churn rate) & renewals
  

### Dataset Used
---
1. Subscription Type- these are the types of subscription the Organisation offers
2. Subscription Periods - There are two subscription periods. 2022-2023 AND 2023-2024.
3. Number of Customers -  There are 20 distinct Customers. 12 in 2022-2023 period and 8 in 2023-2024 period.
4. Subscription Start- this is the date when the customer subscription type commenced .
5. Subscription End- this is the date when the subscription ends.
6. Subscription Duration- this is the time duration of the Subscription service. Measured in days. Calculated as; (Subscription end - Subscription start).
7. Average  Subscription Duration- This is the least amount of time duration of subscription for each customer.
8. Cancellations - The number of Subscription service that has been discontinued. Described with 'True' or 'False'
9. Region- Regions locations where the Internet Provider offers its services
10. Revenue - It is the total amount of income generated by the sale of services provided by the Organisation
11. Average Revenue- how much each customer brings to the business.

### Tools Used
---
1. Microsoft Excel [Download here][LITA Capstone Dataset.xlsx](https://github.com/user-attachments/files/17551135/LITA.Capstone.Dataset.xlsx)
   - for Data cleaning
   - for Summarisation of the data
   - for Visualisation
2. SQL Server [Download here](https://github.com/Oluwakemi-moyin/capstone_project_customerdata/blob/d6e362b91515ed24e449f15e0649d012329871ef/SQLQueryPROJECT-CUSTOMERDATA.sql )
   - for data querying
3. Microsoft PowerBI [Download here](https://github.com/Oluwakemi-moyin/capstone_project_customerdata/blob/d6e362b91515ed24e449f15e0649d012329871ef/Customer%20data-Project.pbix )
    - for Summarisation of the dataset and
    - for Visualisations
4. Github- for profile building
   
### Process
---
So, how did I tackle this problem?
Well I approached it in 5 steps:
1. Data understanding - the key to success on any data project is to understand the data in detail. So I took the time to understand the data model and domain of the business. 
2. Data cleaning - after understanding the data, I then cleaned the available datasets and thought about what an ideal dataset should look like for this problem.
   This was done using the following tools;
   - Microsoft Excel
     - The use of conditional formatting to check for duplicates
     - Pivot Table- to summarise the data
   - Microsoft Power BI- using the Transform data page to check for null values and errors.
3. Data modelling - After ensuring the data was clean for analysis, I needed to process and model this data into a dataset that can precisely answer the business questions and produce the results needed.
4. Data analysis - With the new dataset, I used my analytical expertise to uncover insights from this dataset and to produce visualizations to describe the insights.
   The following tools were used;
   - Microsoft Excel- Use of formulas like Subscription Duration
      - Pivot table
        - for calculations like; , Average Revenue, Distinct Count of Customers, Top 10 Customers by Revenue and
        - to show results like; Total Subscription duration, Total Revenue by Region and Subscription type, Number of Cancellations and Renewals, Region/Subscription type by                   Distinct count of customers.
        FORMULA:
        ```
         Subscription Duration = (Subscription End - Subscription Start)
        ```
    - SQL Server - analysis was done with queries like;
         - Total number of customers from each region
            ```
           SELECT  APPROX_COUNT_DISTINCT(customerid) AS No_of_Customers , Region from Customer_data
            group by Region
            order by APPROX_COUNT_DISTINCT(customerid) desc
            ```
         -  Most popular subscription type by the number of customers
            ```
            select top 1 SubscriptionType, APPROX_COUNT_DISTINCT(CUSTOMERID) AS No_of_Customers from CUSTOMER_DATA
            GROUP BY SubscriptionType
            ORDER BY No_of_Customers DESC
            ```
         -  Customers who canceled within 6months
            ```
            select customerID, CUSTOMERNAME, Subscription_duration from CUSTOMER_DATA
            where canceled ='TRUE' and Subscription_duration>= DATEADD(Month,-6,GETDATE())
            ```
         -  Average subscription duration for all customers
            ```
            select AVG(subscription_duration) as AvgSubscriptionDuration from CUSTOMER_DATA
             ```
            
     - Microsoft Power BI
       - Through the use of DAX functions(calculated measure) for Average subscription duration for all customers and Calculated columns like Subscription date(Monthly)
       - Use of Charts, Cards, Tables
5. And finally I used these insights to unlock business decisions and to make recommendations on next steps.
     

### Dashboard Overview
---

![IMG-20241027-WA0030](https://github.com/user-attachments/assets/b46e5ad4-49c7-4c7b-a6b2-dfdbf2f86d41)




                                                               |A|
## Subscription Patterns
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-10-29 105716](https://github.com/user-attachments/assets/de007ff7-605d-41d8-8f7b-d0f989f017f1)     ![Screenshot 2024-10-31 025616](https://github.com/user-attachments/assets/fd5e3586-11e5-4baa-a5ee-21a3588c2be0)
![Screenshot 2024-10-25 132736](https://github.com/user-attachments/assets/a2395603-1890-4061-8123-54ee3da86124)
![Screenshot 2024-10-26 013524](https://github.com/user-attachments/assets/5ab8df58-310e-4b31-8141-187142c2a724)   



### Data Visualization
---
![IMG-20241027-WA0017](https://github.com/user-attachments/assets/8db43a5c-42de-48bf-bc84-433a2b6f1111)    ![WhatsApp Image 2024-10-27 at 21 54 39_b8ef3dfc](https://github.com/user-attachments/assets/08a3e76f-f856-477b-8134-bea7096b593f)         
![Screenshot 2024-10-25 133250](https://github.com/user-attachments/assets/57dc64fc-4879-491b-bdfa-9914fc859c42) ![Screenshot 2024-10-26 013644](https://github.com/user-attachments/assets/6d03ea5e-fc41-4248-845a-96f04e353aac)
![REGION SUBTYPE BY REVENUE](https://github.com/user-attachments/assets/56521819-3fca-4033-8f4a-804be595f71f)


 
### Inferences
---
1. Overall Revenue Trends by year
   - BASIC SUBSCRIPTION has the highest Total revenue of 74,756,784 followed by Premium Subscription with a total revenue of 37,580,782 for the time periods(2022-2024)
   - BASIC SUBSCRIPTION which had the highest Total revenue of 44,913,187 as at year 2022 declined further to 29,843,597 by year 2023
   - BASIC SUBSCRIPTION has the highest total number of subscription duration (13,698,750) in days for the time periods (2022-2024).
   - Standard Subscription brought in the lowest total revenue of 37,482,120 for the time periods(2022-2024).
   - BASIC SUBSCRIPTION has the most number of subscribers (distinct count of 10) as compared to other plans.
   - Customers had multiple subscription times during each time period(2022-2023) and (2023-2024).
   - Each customer bought subscription 3,750 times within a subscription period.
   
2. Regional Performance
   - SOUTHERN REGION accounts for 25.08% of the overall revenue for the time periods(2022-2024) which was for the PREMIUM SUBSCRIPTION PLAN.
   - The region with the lowest % revenue is the North Region with a 24.94% of the overall revenue for the time periods(2022-2024) which is for the BASIC SUBSCRIPTION PLAN.
   - The customers are evenly distributed among the regions with 5 persons per region making it a total of 20 customers for the entire regions(distinct counts).
 
3. Insights(Strategic Implications to the Business)
   - The BASIC SUBSCRIPTION PLAN brought in the most revenue as compared to other SUBSCRIPTION PLANS which is due to its lower rates compared to others.
   - Customers prefer BASIC SUBSCRIPTION the most due to its cheaper rates.
   - South Region is the top performing region for the time periods(2022-2024)
   - East and North region subscribers like cheaper prices which is why they prefer Basic subscription
   - The overall total revenue figures dropped from 89,902,969 in 2022 to 59,916,717 in 2023 among all regions.


 
### Conclusion
---
More emphasis should be placed on increasing revenue from the Standard Subscription type.
In order to achieve this;
- The Company can focus on subscription bonuses e.g referral bonuses, buy 2years get 1 extra month free, reductions in prices,etc for renewals to boost sales higher and thereafter the company's revenue. This will also help to retain its present customers, increase the numbers of subscribers and also bring back old customers i.e causing them to renew subscriptions.
- Also, the Company has to review its Internet services(improve its services)
- Due to the decline in the subscription numbers and revenue for the 2023 time period as compared to when the company newly started in 2022. A survey should be carried out to get more understanding of what caused the decline.




                                                               |B|
## Regional Performances
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-10-25 132708](https://github.com/user-attachments/assets/57bdca7a-1602-4863-9b52-632e7cf98acd)      ![Screenshot 2024-10-25 132948](https://github.com/user-attachments/assets/c277a145-fd6b-4fb8-a838-a7499bca0387)        ![Screenshot 2024-10-29 102629](https://github.com/user-attachments/assets/1bb46883-0e64-4ab6-af51-7077139a4142)

![Screenshot 2024-10-30 111001](https://github.com/user-attachments/assets/05c41c23-3b8b-482b-9f45-6d343782902a)   ![Screenshot 2024-10-29 112431](https://github.com/user-attachments/assets/49cdb3d9-59a0-4c7e-b454-93d1e279186c)

![Screenshot 2024-10-30 122334](https://github.com/user-attachments/assets/163d7a8a-4523-4170-b40b-29ec03724b7c)   ![Screenshot 2024-10-30 122247](https://github.com/user-attachments/assets/db9bcc72-c4fa-4f13-bb51-f5865c8b4650)

### Data Visualization
---
![revenue by region](https://github.com/user-attachments/assets/c7c39f9e-88ca-4f89-ac92-3a1b2ab37813)

![revenue by no of cancellations](https://github.com/user-attachments/assets/9b1b4e33-e59f-4819-b5d7-b8da42cccf05)

![REGION SUBTYPE BY REVENUE](https://github.com/user-attachments/assets/88eba379-c909-41f4-9c7f-0b26dcddf836)



   
### Inferences
---
1. Overall Revenue Trends by Year
   - SOUTHERN REGION accounts for 25.08% of the overall revenue for the time periods(2022-2024) which was for the PREMIUM SUBSCRIPTION PLAN.
   - The region with the lowest % revenue is the North Region with a 24.94% of the overall revenue for the time periods(2022-2024) which is for the BASIC SUBSCRIPTION PLAN.
   - The East Region had the highest decline by 33.68% in Subscription revenue from 2022 to 2023
   - South region brought in revenue of 22,528,898.00, which was the highest followed by East Region with revenue of 22,479,354.00 in 2022.
   - The East Region had the highest decline of 33.68% in Subscription revenue from 2022 to 2023.
   
2. Performance by Customers
   - The customers are evenly distributed among the regions with 5 persons per region making it a total of 20 customers for the entire regions(distinct counts).
   - Ella brought in the highest revenue of 7,517,651.00 in 2022 in the SOUTH Region
   - SARA brought in the lowest revenue of 7,454,333.00 in 2022 in the WEST Region
   - SOPHIA brought in the highest revenue of 7,560,654.00 in 2023 in the SOUTH Region
   - PAUL brought in the lowest revenue of 7,402,056.00  in 2023 in the EAST Region 

3. Performance by Subscription type
   - The BASIC subscription type is the most popular subscription type as there are two regions(EAST and NORTH) purchasing that type for both subscription periods(2022-2023 and       2023-2024)
   
4. Insights(Strategic Implications to the Business)
   - South Region is the top performing region for the time periods(2022-2024)
   - East and North region subscribers like cheaper prices which is why they prefer Basic subscription however their revenue contribution is very low compared to other regions.
   - The total revenue figures dropped from 89,902,969 in 2022 to 59,916,717(difference of 29,986,252) in 2023 for all regions.
   - Customers had multiple subscription per subscription period.
   - In 2022 when the Subscription Company started providing services, Customers in the South region brought in revenue of 22,528,898.00, which was the highest followed by East       Region with revenue of 22,479,354.00
   - However in 2023, there was a significant drop in subscription revenue by 33.19% in the South Region while the East Region had the highest decline in subscription revenue by      33.68%.
   - The set of Customers that subscribed in 2022 did not renew in 2023. There are different sets of Customers for both Subscription terms(2022-2023 and 2023-2024 this may be         due to poor customer service or dissatisfaction of subscription service by customers.
 
### Conclusion
---
- More emphasis should be placed on reviewing the subscription services available in the North region. 
- The Company can focus on subscription bonuses e.g referral bonuses, buy 2years get 1 extra month free, reductions in prices,etc for renewals to boost sales higher and thereafter the company's revenue. This will also help to retain its present customers, increase the numbers of subscribers and also bring back old customers i.e causing them to renew subscriptions. 
- The Company needs to review its Internet services as the subscription numbers and revenue significantly dropped in the 2023 time period as compared to when the company newly started in 2022. This was caused by the fact that the set of customers that subscribed for 2022-2023 subscription period are different from the present subscribers and the present subscribers are smaller in number than the previous(12 customers in 2022 and 8 customers in 2023). Information on the sales price will shed more light on the decline in total revenue. Also, a survey can be carried out to get more understanding of what caused the decline and what made the first set of customers leave.


                                                               |C|
## Total Revenue
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-10-30 164410](https://github.com/user-attachments/assets/f486ffe9-992a-4d19-961a-977514deb799)
![Screenshot 2024-10-25 132708](https://github.com/user-attachments/assets/3074f1c5-074e-440f-9b7b-b3aefd816797)
![Screenshot 2024-10-25 132736](https://github.com/user-attachments/assets/971bdae9-4b02-4454-8b65-ea2a70b502ab)
![Screenshot 2024-10-25 133124](https://github.com/user-attachments/assets/ca5fb143-3e92-480a-b165-0757c6113c08)

![Screenshot 2024-10-29 105716](https://github.com/user-attachments/assets/386f32d4-9836-478b-afe4-ba63eea83372)


 ![Screenshot 2024-10-30 162902](https://github.com/user-attachments/assets/f863979e-38d4-40b7-a58c-f5c2dd2d6fe3)       ![Screenshot 2024-10-30 173045](https://github.com/user-attachments/assets/9225829e-1d5b-43bc-a586-3245235c1e65)   


### Data Visualization
---
![revenue by subscription type](https://github.com/user-attachments/assets/3091731d-3b62-4463-bde5-8e4e672783c0)      ![revenue by region](https://github.com/user-attachments/assets/5c065d8f-b04c-4245-98f1-339e298601a3)


![Screenshot 2024-10-30 164641](https://github.com/user-attachments/assets/d47161a6-5d1b-4f3c-981b-8707882a8f51)           ![Screenshot 2024-10-30 163013](https://github.com/user-attachments/assets/d284fbf9-3e00-4a52-b7de-be831ab6177d)



   
### Inferences
---
1. Overall Revenue Trends by Month and Year
   - JUNE has the highest %Revenue of 10.06 of the overall Revenue of 149.82million followed by the month of FEBRUARY with 10.04%.
   - OCTOBER had the lowest %Revenue of 4.98% of the overall Revenue of 149.82million followed by the month of SEPTEMBER with 4.99%.
   - 2022/2023 had the highest Total Revenue of 60% of the overall Revenue while 2023/2024 had 40% of the overall Revenue
   
2. Regional Performance
   - SOUTHERN REGION accounts for 25.08% of the overall revenue for the time periods(2022-2024) which was for the PREMIUM SUBSCRIPTION PLAN.
   - The region with the lowest % revenue is the North Region with a 24.94% of the overall revenue for the time periods(2022-2024) which is for the BASIC SUBSCRIPTION PLAN.
   - The East Region had the highest decline by 33.68% in Subscription revenue from 2022 to 2023
   - South region brought in revenue of 22,528,898.00, which was the highest followed by East Region with revenue of 22,479,354.00 in 2022.
   - The East Region had the highest decline of 33.68% in Subscription revenue from 2022 to 2023.

3. Customer Performance
   - Ella brought in the highest revenue of 7,517,651.00 in 2022 in the SOUTH Region
   - SARA brought in the lowest revenue of 7,454,333.00 in 2022 in the WEST Region
   - SOPHIA brought in the highest revenue of 7,560,654.00 in 2023 in the SOUTH Region
   - PAUL brought in the lowest revenue of 7,402,056.00  in 2023 in the EAST Region
   - Customers had multiple subscription times during each time period(2022-2023) and (2023-2024). Each Customer subscribed differently 3,750 times in each periods.

4. Performance by Subscription type
   - The BASIC subscription type is the most popular subscription type as there are two regions(EAST and NORTH) purchasing that type for both subscription periods(2022-2023 and       2023-2024).
   - BASIC SUBSCRIPTION has the highest Total revenue of 74,756,784 followed by Premium Subscription with a total revenue of 37,580,782 for the time periods(2022-2024)
   - BASIC SUBSCRIPTION which had the highest Total revenue of 44,913,187 as at year 2022 declined further to 29,843,597 by year 2023
   - BASIC SUBSCRIPTION has the highest total number of subscription duration (13,698,750) in days for the time periods (2022-2024).
   - Standard Subscription brought in the lowest total revenue of 37,482,120 for the time periods(2022-2024).
   - BASIC SUBSCRIPTION has the most number of subscribers (distinct count of 10) as compared to other plans.
   
7. Insights(Strategic Implications to the Business)
   - The Company has not been able to retain its customers. None of the past customers for subscription period 2022/2023 renewed their subscription, although some did not cancel      their subscription.
   - The Company's Subscription Revenue greatly declined by 20% in the year 2023/2024 subscription period, this might be due to both the number of subscribers which is 33.33%(8       subscribers) lower compared to the 2022/2023 subscription period(there were 12 subscribers). 
 
### Conclusion
---

A survey can be carried out to get more understanding of what caused the decline in Revenue in terms of the prices and what customers feel about using their services.    However, these are my recommendations;
- Emphasis should be placed on BASIC subscription type and its prices can be adjusted a bit higher to cause Revenue to rise.
- JUNE is the best sales month for the Subscription company followed by FEBRUARY which could probably be due to Valentine's celebration.
- The Company can focus on giving subscription bonuses e.g referral bonuses, buy 2years get 1month free, reductions in prices,etc for renewals to boost sales higher and thereafter, also increase the company's revenue.  This will help to retain its present customers, increase the numbers of subscribers and also bring back old customers i.e causing them to renew subscriptions.


                                                               |D|

## Average Revenue by Region, Subscription types
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-10-31 042205](https://github.com/user-attachments/assets/534fc7d5-beee-4589-adf7-026fa7316703)    ![Screenshot 2024-10-31 042037](https://github.com/user-attachments/assets/363e6360-11ad-4215-adea-df564bc18b2c)     ![Screenshot 2024-10-31 042248](https://github.com/user-attachments/assets/2fd38a30-bd06-44a2-9206-6b55fae69636)



### Data Visualization
---

![AVG REV BY REGION BY YEAR](https://github.com/user-attachments/assets/bb7c1fc0-8c29-4bf1-b5a8-028b1f9d5561)  ![AVG REV BY YEAR](https://github.com/user-attachments/assets/4870f2d4-0d6e-4510-9f52-0d7a14b33f6f)
![AVG BY SUB TYPE](https://github.com/user-attachments/assets/f7f67a25-14ba-4d7c-a6d6-713201ae329e)

   
### Inferences
---
1. Overall Average Trends by Year
   - In 2022/2023 Subscription period, each customer brought in an average of 1,997.84 to the business
   - In 2023/2024 Subscription period, each customer brought in an average of 1,997.22 to the business
   - The Average revenue declined by 0.031% in the 2023/2024 Subscription period.
   - SOPHIA is the best performing customer with an average revenue of 2,016. In contrast, PAUL brought in an average of 1,974.
   
2. Regional Performance
   - The SOUTH region brought in the highest overall average revenue of 2,004.31 per subscriber for both subscription periods.
   - The NORTH region brought in the least average revenue of 1,993.01 per subscriber for both subscription periods.

 
3. Performance by Subscription types
   - PREMIUM subscription type had the highest average revenue of 2,004 per subscriber for both subscription periods.
   - BASIC subscription type brought in the least which was 1,994  per subscriber for both subscription periods.

   
4. Insights(Strategic Implications to the Business)
   - BASIC subscription type brought in the least average revenue of 1,994 per subscriber for both subscription periods. The Company has not been able to retain its customers.        None of the past customers for subscription period 2022/2023 renewed their subscription, although some did not cancel  their subscription.
   - The Company's Subscription Revenue greatly declined by 20% in the year 2023/2024 subscription period, this might be due to both the number of subscribers which is 33.33%(8       subscribers) lower compared to the 2022/2023 subscription period(there were 12 subscribers). 
  
 
### Conclusion
---
- The Price of BASIC SUBSCRIPTION TYPE should be reviewed higher so as to boost the company's average revenue per subscriber .
However, the Company needs to be very careful in taking this action as this might cause some subscibers to cancel or not renew their subscriptions.
- Follow-ups and surveys should be done to understand why customers are not renewing subscriptions after a subscription period and why they are cancelling susbscriptions.


                                                               |E|
## Best Performing Customers by Revenue
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-10-31 052545](https://github.com/user-attachments/assets/8b876c99-7bb8-43c1-a059-59b47d7197fd)   ![Screenshot 2024-10-31 093319](https://github.com/user-attachments/assets/08b4fa5e-5f34-4771-a6f5-f0c3e0e2d49d) ![Screenshot 2024-10-31 094259](https://github.com/user-attachments/assets/4590a7b6-2a46-4119-848f-4012583a52a8)


### Data Visualization
---

![best performing customers-2022 and 2023](https://github.com/user-attachments/assets/55a0f67e-7340-42c0-bef8-de686e8b5fe6)  

![best performing customers-2022](https://github.com/user-attachments/assets/9deba94d-dd39-4069-a28e-4cb9fbd67810)

![best performing customers-2023](https://github.com/user-attachments/assets/ef108e8d-fd63-4013-bf47-d8d1bc7c8b84) 



   
### Inferences
---
1. Overall Revenue trends by Year
   - The customer with the overall highest revenue is SOPHIA who brought in 7,560,654.00 followed by Jane and Ella
   - Ella brought in the highest revenue of 7,517,651.00 in 2022/2023 Subscription period
   - SARA brought in the lowest revenue of 7,454,333.00 in 2022/2023 Subscription period 
   - SOPHIA brought in the highest revenue of 7,560,654.00 in 2023/2024 Subscription period
   - PAUL brought in the lowest revenue of 7,402,056.00  in 2023/2024 Subscription period
   - Customers had multiple subscriptions during the Subscription periods (2022-2023) and (2023-2024). Each Customer subscribed differently 3,750 times in each periods.
   
2. Regional Performance
   - The number of customers are evenly distributed among the regions(5 customers each)
   - The region with the top performing customers for both Subscription periods is the SOUTH REGION  followed by the EAST REGION
     
3. Insights(Strategic Implications to the Business)
   - SOPHIA is a very profitable customer who has brought in the highest revenue for both periods.
   - The SOUTH REGION is the best region so far in terms of revenue distribution.
   - PAUL is the least performing customer.
   - The NORTH REGION is the least performing region in terms of revenue distribution.
 
### Conclusion
---
- For the best performing customers, the Company should give them rewards(cash or gift). This will further increase their loyalty to the brand, and in return, they very likely will renew their subscriptions and boost the organization's revenue.
- Also, for least performing customers, the organisation should encourage them by giving discounts, and promos to boost their subscriptions and thereby, increasing the organisation's revenue.
- Surveys can also be carried out to know what customers feel about your brand and where improvements are necessary.




                                                               |F|
## Average Subscription Duration
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-10-25 132746](https://github.com/user-attachments/assets/18086d14-c675-461d-9e97-31bc9950048a)
![Screenshot 2024-10-31 123040](https://github.com/user-attachments/assets/ab02f1b2-e157-40d4-bc13-12a4bcb7c570)
![Screenshot 2024-10-31 123027](https://github.com/user-attachments/assets/21959135-e33d-4cbb-a41d-3892bdfeba04)
![Screenshot 2024-10-31 123021](https://github.com/user-attachments/assets/cc5b9f78-1d25-4cb0-bf27-c277c891d576)


### Data Visualization
---

![Screenshot 2024-10-25 133304](https://github.com/user-attachments/assets/588a583a-e879-41b6-aacc-b14521bd0bea)

![Region by avg sub duration](https://github.com/user-attachments/assets/8a450849-95aa-4ed4-b305-4fecc4f5226e)

![Year by avg subscrip duration](https://github.com/user-attachments/assets/6a57515b-7522-4d67-b162-16016f44d4d3)

   
### Inferences
---
1. Overall Subscription Trends by Year
   - The average number of days of subscription for each customer in 2022/2023 subscription period is 365.00.
   - In 2023/2024 subscription period for each customer, the average number of subscription days is 365.88.
   - The average subscription duration each customer subscribed for is 365.35 for both subscription periods.
   
2. Regional Performance
   - EAST, SOUTH & WEST REGIONS have the highest average subscription duration of 365.40 respectively
   - NORTH REGION has the lowest average subscription duration of 365.20
 
3. Insights(Strategic Implications to the Business)
   - The average subscription duration per customer is 365.35. This tells us that each customer subscribes for atleast a year.
   - The NORTH is underperforming as it has the least subscription duration.
### Conclusion
---
- The organisation should should encourage the customers in the NORTH REGION by giving discounts, and promos to boost their subscriptions, and thereby, increasing the organisation's revenue.
- The Company can focus on giving subscription bonuses e.g referral bonuses, buy 2years get 1month free, reductions in prices,etc for renewals to boost sales higher and thereafter, also increase the company's revenue.  This will help to retain its present customers, increase the numbers of subscribers and also bring back old customers i.e causing them to renew subscriptions.




                                                               |G|
## Key trends in Cancellations and renewals
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.
![Screenshot 2024-10-25 132948](https://github.com/user-attachments/assets/f27d6ba7-a333-41bb-851c-afd479953529) ![Screenshot 2024-10-25 133021](https://github.com/user-attachments/assets/2ec3c0e7-a7fb-4e49-a5e4-a44252d7ff89) ![Screenshot 2024-10-31 120136](https://github.com/user-attachments/assets/44212c13-7287-4f33-aff5-de8c9681d88f)

![Screenshot 2024-10-31 120826](https://github.com/user-attachments/assets/83114726-bd9d-4507-a2dc-3b4900d14bce)

![cancellations by year](https://github.com/user-attachments/assets/24b720d1-84fe-4516-bf16-00c3d4d9d8db) ![count of cancellation](https://github.com/user-attachments/assets/18498193-e43f-45ca-a26b-aca570c349bd)


### Data Visualization
---
![IMG-20241027-WA0016](https://github.com/user-attachments/assets/d31e2bbb-302c-4d0a-a149-94ad63b84a77) ![Screenshot 2024-10-31 120538](https://github.com/user-attachments/assets/f442078f-57e5-4005-b217-698b550d4297)
![cancellations by year0chart](https://github.com/user-attachments/assets/9c2b2ead-e4e9-4a90-a922-57a1cc9bc20f)
![revenue by no of cancellations](https://github.com/user-attachments/assets/c495b679-3e03-4457-b8ed-42394d86341b)
![customer  cancellations in 2022-chart](https://github.com/user-attachments/assets/d46ecc7f-740e-4627-9710-2c08708cb532)
![customer  cancellations in 2023-chart](https://github.com/user-attachments/assets/4e38659e-c9aa-49ab-828f-186a728e42f9)


   
### Inferences
---
1. Overall Cancellations Trends by Month and Year
   - APRIL had the highest number of customers that cancelled. Total of 2customers. Total subscription canceled was 7,500.
   - There were no cancellations in MARCH, JULY, NOVEMBER and DECEMBER
   - Subscription period 2022/2023
2. Regional Performance
   - 
   
4. Customer Performance
   - 9 Customers canceled their subscription during the subscription periods
 
5. Insights(Strategic Implications to the Business)
   -   
 
### Conclusion
---


### Tables
---
💻💻
🥇🥇
Total Revenue per Year
|YEAR| TOTAL REVENUE|
|-----| -----|
|2023|5,575,000|
|2024|5,012,500|

👩‍💻👩🏾‍💻 
Average Revenue per Year
|YEAR| AVERAGE REVENUE|
|-----| -----|
|2023|185.8333333|
|2024|250.625|

