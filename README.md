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
   - Track subscription Patterns,
   - Regional Performances
   - Total Revenue by Region
   - Average Revenue by Region, Subscription type
   - Top 10 Customers by Revenue
   - Average subscription duration
   - Key trends in cancellations(Churn rate) & renewals
  

### Dataset Used
---
1. Subscription Type- these are the types of subscription the Retail store offers
2. Subscription Periods - There are two subscription periods. 2022-2023 AND 2023-2024.
3. Number of Customers -  There are 20 distinct Customers. 12 in 2022-2023 period and 8 in 2023-2024 period.
4. Subscription Start- this is the date when the customer subscription type commenced 
5. Subscription End- this is the date when the subscription ends
6. Subscription Duration- this is the time duration of the Subscription service. Calculated as; (Subscription end - Subscription start)
7. Cancellations - The number of Subscription service that has been discontinued. Described as 'True' or 'False'
8. Region- Regions locations where the Internet Provider offers its services
9. Revenue - It is the total amount of income generated by the sale of services provided by the Organisation
10. Average Revenue- how much each customer brings to the business.

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

![Screenshot 2024-10-29 105716](https://github.com/user-attachments/assets/de007ff7-605d-41d8-8f7b-d0f989f017f1)

![Screenshot 2024-10-25 132804](https://github.com/user-attachments/assets/20f3003e-2058-4189-ae20-684e98d737b8)    ![Screenshot 2024-10-25 132736](https://github.com/user-attachments/assets/a2395603-1890-4061-8123-54ee3da86124)

![Screenshot 2024-10-26 013524](https://github.com/user-attachments/assets/5ab8df58-310e-4b31-8141-187142c2a724)    ![Screenshot 2024-10-29 102609](https://github.com/user-attachments/assets/cffe7798-e73c-4ca3-ad5a-d25c7d463647)

![Screenshot 2024-10-29 112431](https://github.com/user-attachments/assets/b471436d-bead-4491-b191-fae3d54c03b4)


### Data Visualization
---
![IMG-20241027-WA0017](https://github.com/user-attachments/assets/8db43a5c-42de-48bf-bc84-433a2b6f1111)    ![WhatsApp Image 2024-10-27 at 21 54 39_b8ef3dfc](https://github.com/user-attachments/assets/08a3e76f-f856-477b-8134-bea7096b593f)

![Screenshot 2024-10-25 133250](https://github.com/user-attachments/assets/57dc64fc-4879-491b-bdfa-9914fc859c42)   ![REGION SUBTYPE BY REVENUE](https://github.com/user-attachments/assets/56521819-3fca-4033-8f4a-804be595f71f)

![Screenshot 2024-10-26 013644](https://github.com/user-attachments/assets/6d03ea5e-fc41-4248-845a-96f04e353aac)
 
### Inferences
---
1. Overall Revenue Trends by year
   - BASIC SUBSCRIPTION has the highest Total revenue of 74,756,784 followed by Premium Subscription with a total revenue of 37,580,782 for the time periods(2022-2024)
   - BASIC SUBSCRIPTION which had the highest Total revenue of 44,913,187 as at year 2022 declined further to 29,843,597 by year 2023
   - BASIC SUBSCRIPTION has the highest total number of subscription duration (13,698,750) in days for the time periods (2022-2024).
   - Standard Subscription brought in the lowest total revenue of 37,482,120 for the time periods(2022-2024).
   - BASIC SUBSCRIPTION has the most number of subscribers (distinct count of 10) as compared to other plans.
   - Customers had multiple subscription times during each time period(2022-2023) and (2023-2024).
   
2. Regional Performance
   - SOUTHERN REGION accounts for 25.08% of the overall revenue for the time periods(2022-2024) which was for the PREMIUM SUBSCRIPTION PLAN.
   - The region with the lowest % revenue is the North Region with a 24.94% of the overall revenue for the time periods(2022-2024) which is for the BASIC SUBSCRIPTION PLAN.
   - The customers are evenly distributed among the regions with 5 persons per region making it a total of 20 customers for the entire regions(distinct counts).
 
3. Insights(Strategic Implications to the Business)
   - The BASIC SUBSCRIPTION PLAN brought in the most revenue as compared to other SUBSCRIPTION PLANS which is due to its lower rates compared to others.
   - Customers prefer BASIC SUBSCRIPTION the most due to its cheaper rates.
   - South Region is the top performing region for the time periods(2022-2024)
   - East and North region subscribers like cheaper prices which is why they prefer Basic subscription
   - The total revenue figures dropped from 89,902,969 in 2022 to  59,916,717 in 2023 which was evenly spread among all the regions.


 
### Conclusion
---
The Subscription Company needs to review its prices down to encourage more subscribers for all its subscription plans with more emphasis on Standard Subscription.
Also, the Company has to review its Internet services as the subscription numbers and revenue significantly dropped in the 2023 time period as compared to when the company newly started in 2022. A survey can be carried out to get more understanding of what caused the decline.




                                                               |B|
## Regional Performances
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-10-25 132708](https://github.com/user-attachments/assets/57bdca7a-1602-4863-9b52-632e7cf98acd)   ![Screenshot 2024-10-25 132948](https://github.com/user-attachments/assets/c277a145-fd6b-4fb8-a838-a7499bca0387)

![Screenshot 2024-10-30 111548](https://github.com/user-attachments/assets/d5fb0f49-2d29-4f4e-a51d-dc0b5a7d4aec)   ![Screenshot 2024-10-29 102629](https://github.com/user-attachments/assets/1bb46883-0e64-4ab6-af51-7077139a4142)

![Screenshot 2024-10-30 111001](https://github.com/user-attachments/assets/05c41c23-3b8b-482b-9f45-6d343782902a)   ![Screenshot 2024-10-29 112431](https://github.com/user-attachments/assets/49cdb3d9-59a0-4c7e-b454-93d1e279186c)

![Screenshot 2024-10-30 122334](https://github.com/user-attachments/assets/163d7a8a-4523-4170-b40b-29ec03724b7c)   ![Screenshot 2024-10-30 122247](https://github.com/user-attachments/assets/db9bcc72-c4fa-4f13-bb51-f5865c8b4650)
![Screenshot 2024-10-30 122334](https://github.com/user-attachments/assets/37eaa6cb-a853-4dec-9c9a-47cc66d77bfe)
### Data Visualization
---
![IMG-20241027-WA0029](https://github.com/user-attachments/assets/8c39da95-26d6-4158-b56d-118aa5be4aee)

![IMG-20241027-WA0019](https://github.com/user-attachments/assets/fe72e262-a86b-4c31-8896-e85ccc764a1b)

![REGION SUBTYPE BY REVENUE](https://github.com/user-attachments/assets/88eba379-c909-41f4-9c7f-0b26dcddf836)

![IMG-20241027-WA0019](https://github.com/user-attachments/assets/503acd7b-3295-4dbb-b014-6ea45129ba30)


   
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
   - East and North region subscribers like cheaper prices which is why they prefer Basic subscription
   - The total revenue figures dropped from 89,902,969 in 2022 to  59,916,717(difference of 29,986,252) in 2023 for all regions.
   - Customers had more than one subscription per subscription term.
   - In 2022 when the Subscription Company started providing services, Customers in the South region brought in revenue of 22,528,898.00, which was the highest followed by East       Region with revenue of 22,479,354.00
   - However in 2023, when a renewal was done after the initial one ended in this same year, there was a significant drop of 33.19% in the South Region while the East Region had       the highest decline of 33.68%.
   - The set of Customers that subscribed in 2022 did not renew in 2023. There are different sets of Customers for both Subscription terms(2022-2023 and 2023-2024 this may be         due to poor customer service or dissatisfaction of subscription service by customers.
 
### Conclusion
---
The Company needs to review its Internet services as the subscription numbers and revenue significantly dropped in the 2023 time period as compared to when the company newly started in 2022. This was caused by the fact that the set of cuastomers that subscribed for 2022-2023 subscription term are different from the present subscribers and the present subscribers are smaller than the previous(12 customers in 2022 and 8 customers in 2023). Information on the sales price will shed more light on what caused this. Also, a survey can be carried out to get more understanding of what caused the decline and what made the first set of customers leave.


                                                               |C|
## Total Revenue
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-10-25 132708](https://github.com/user-attachments/assets/3074f1c5-074e-440f-9b7b-b3aefd816797)
![Screenshot 2024-10-25 132930](https://github.com/user-attachments/assets/ae347e2b-c411-445b-80bb-f16c68bff3c8)
![Screenshot 2024-10-25 133124](https://github.com/user-attachments/assets/ca5fb143-3e92-480a-b165-0757c6113c08)
![Screenshot 2024-10-25 132736](https://github.com/user-attachments/assets/971bdae9-4b02-4454-8b65-ea2a70b502ab)
![Screenshot 2024-10-29 105716](https://github.com/user-attachments/assets/386f32d4-9836-478b-afe4-ba63eea83372)
![Screenshot 2024-10-30 162902](https://github.com/user-attachments/assets/f863979e-38d4-40b7-a58c-f5c2dd2d6fe3)
![Screenshot 2024-10-30 164410](https://github.com/user-attachments/assets/f486ffe9-992a-4d19-961a-977514deb799)
![Screenshot 2024-10-30 173045](https://github.com/user-attachments/assets/9225829e-1d5b-43bc-a586-3245235c1e65)




### Data Visualization
---
![IMG-20241027-WA0029](https://github.com/user-attachments/assets/70695544-ff28-42bb-94e7-c8249c15d1a2)
![Screenshot 2024-10-25 133224](https://github.com/user-attachments/assets/13108056-50c6-451d-9ec9-db44a1c53287)
![Screenshot 2024-10-25 133240](https://github.com/user-attachments/assets/9551bebb-d24f-4c1c-92c1-c9f7135eb9ed)
![Screenshot 2024-10-30 163013](https://github.com/user-attachments/assets/d284fbf9-3e00-4a52-b7de-be831ab6177d)
![Screenshot 2024-10-30 164641](https://github.com/user-attachments/assets/d47161a6-5d1b-4f3c-981b-8707882a8f51)



   
### Inferences
---
1. Overall Revenue Trends by Month and Year
   - JUNE has the highest %Revenue of 10.06 of the overall Revenue of 149.82million followed by the month of FEBRUARY with 10.04%.
   - OCTOBER had the lowest %Revenue of 4.98% of the overall Revenue of 149.82million followed by the month of SEPTEMBER with 4.99%.
   - 2022/2023 had the highest Total Revenue of 60% of the overall Revenue while 2023/2024 had 40% of the overall Revenue
   
3. Regional Performance
   - SOUTHERN REGION accounts for 25.08% of the overall revenue for the time periods(2022-2024) which was for the PREMIUM SUBSCRIPTION PLAN.
   - The region with the lowest % revenue is the North Region with a 24.94% of the overall revenue for the time periods(2022-2024) which is for the BASIC SUBSCRIPTION PLAN.
   - The East Region had the highest decline by 33.68% in Subscription revenue from 2022 to 2023
   - South region brought in revenue of 22,528,898.00, which was the highest followed by East Region with revenue of 22,479,354.00 in 2022.
   - The East Region had the highest decline of 33.68% in Subscription revenue from 2022 to 2023.

5. Customer Performance
   - Ella brought in the highest revenue of 7,517,651.00 in 2022 in the SOUTH Region
   - SARA brought in the lowest revenue of 7,454,333.00 in 2022 in the WEST Region
   - SOPHIA brought in the highest revenue of 7,560,654.00 in 2023 in the SOUTH Region
   - PAUL brought in the lowest revenue of 7,402,056.00  in 2023 in the EAST Region
   - Customers had multiple subscription times during each time period(2022-2023) and (2023-2024). Each Customer subscribed differently 3,750 times in each periods.

6. Performance by Subscription type
   - The BASIC subscription type is the most popular subscription type as there are two regions(EAST and NORTH) purchasing that type for both subscription periods(2022-2023 and       2023-2024).
   - BASIC SUBSCRIPTION has the highest Total revenue of 74,756,784 followed by Premium Subscription with a total revenue of 37,580,782 for the time periods(2022-2024)
   - BASIC SUBSCRIPTION which had the highest Total revenue of 44,913,187 as at year 2022 declined further to 29,843,597 by year 2023
   - BASIC SUBSCRIPTION has the highest total number of subscription duration (13,698,750) in days for the time periods (2022-2024).
   - Standard Subscription brought in the lowest total revenue of 37,482,120 for the time periods(2022-2024).
   - BASIC SUBSCRIPTION has the most number of subscribers (distinct count of 10) as compared to other plans.
   
7. Insights(Strategic Implications to the Business)
   -  The Company has not been able to retain its customers. None of the past customers for subscription period 2022/2023 renewed their subscription.
   - The Company's Subscription Revenue greatly declined by 20% in the year 2023/2024 subscription period. 
 
### Conclusion
---
JUNE is the best sales month for the Subscription company followed by FEBRUARY probably due to Valentine's celebration.
The Company can focus on subscription bonuses e.g referral bonuses, buy 2years get 1month free or reductions in prices for renewals to boost sales yet higher so as to retain its present customers and also bring back old customers.
A survey can be carried out to get more understanding of what caused the decline and what made the first set of customers leave.
                                                             
                                                               |D|
## Average Revenue by Region, Subscription types
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.





### Data Visualization
---



   
### Inferences
---
1. Overall Sales Trends by Month
   
2. Regional Performance
   
 
4. Insights(Strategic Implications to the Business)
  
 
### Conclusion
---


                                                               |E|
## Top 10 Customers by Revenue
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.





### Data Visualization
---



   
### Inferences
---
1. Overall Sales Trends by Month
   
2. Regional Performance
   
 
4. Insights(Strategic Implications to the Business)
  
 
### Conclusion
---


                                                               |F|
## Average Subscription Duration
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.





### Data Visualization
---



   
### Inferences
---
1. Overall Sales Trends by Month
   
2. Regional Performance
   
 
4. Insights(Strategic Implications to the Business)
  
 
### Conclusion
---

                                                               |G|
## Key trends in Cancellations and renewals
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.





### Data Visualization
---



   
### Inferences
---
1. Overall Sales Trends by Month
   
2. Regional Performance
   
 
4. Insights(Strategic Implications to the Business)
  
 
### Conclusion
---


### Tables
---
💻
🥇
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

