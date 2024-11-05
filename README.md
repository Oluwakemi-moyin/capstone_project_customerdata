# Customer Segmentation for Linkit Subscription Service

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
An Internet Provider seeks to obtain the comprehensive analysis of its customer data for its subscription service across a defined period to gain valuable insights into customer segmentation & trends, customers behavior, track subscription types, key trends in cancellations & renewals and regional performances.

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
2. SQL Server [Download here](https://github.com/Oluwakemi-moyin/capstone_project_customerdata/blob/99fbf1e8986210a67e0e2c49aac31664deef0506/SQLQueryPROJECT-CUSTOMERDATA.sql )
   - for data querying
3. Microsoft PowerBI [Download here](https://github.com/Oluwakemi-moyin/capstone_project_customerdata/blob/b6235c0f0e8a65a893e53601effd016b99871ad7/Customer%20data-Project.pbix)
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
        - to show results like; Total Subscription duration, Total Revenue by Region and Subscription type, Number of Cancellations and Renewals, Region/Subscription type by distinct count of customers.
        FORMULA:
        ```
         Subscription Duration = (Subscription End - Subscription Start)
        ```
    - SQL Server - analysis was done with queries like;
         - Total number of customers from each region
            ```
           SELECT  APPROX_COUNT_DISTINCT(customerid) AS No_of_Customers , Region from [dbo].[CUSTOMER DATA_CAPSTONE_PROJECT]
            group by Region
            order by APPROX_COUNT_DISTINCT(customerid) desc
            ```
         -  Most popular subscription type by the number of customers
            ```
            select top 1 SubscriptionType, APPROX_COUNT_DISTINCT(CUSTOMERID) AS No_of_Customers from [dbo].[CUSTOMER DATA_CAPSTONE_PROJECT]
            GROUP BY SubscriptionType
            ORDER BY No_of_Customers DESC
            ```
         -  Customers who canceled within 6months
            ```
            select customerID, CUSTOMERNAME, Subscription_duration from [dbo].[CUSTOMER DATA_CAPSTONE_PROJECT]
            where canceled ='TRUE' and Subscription_duration>= DATEADD(Month,-6,GETDATE())
            ```
         -  Average subscription duration for all customers
            ```
            select AVG(subscription_duration) as AvgSubscriptionDuration from [dbo].[CUSTOMER DATA_CAPSTONE_PROJECT]
             ```
            
     - Microsoft Power BI
       - Through the use of DAX functions(calculated measure) for Average subscription duration for all customers and Calculated columns like Subscription date(Monthly)
       - Use of Charts, Cards, Tables
5. And finally I used these insights to unlock business decisions and to make recommendations on next steps.
     

### Dashboard Overview
---

![Screenshot 2024-11-01 152642](https://github.com/user-attachments/assets/5a6b2bd4-645a-49b0-bc31-42985e4be2e2)





                                                               |A|
## Subscription Patterns
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-11-05 105555](https://github.com/user-attachments/assets/3986d96f-9968-4862-918d-95e3536f4145)
![Screenshot 2024-11-05 105419](https://github.com/user-attachments/assets/2b797e1d-b549-4bf1-962c-1c8422ce00e1)
![Screenshot 2024-11-05 105719](https://github.com/user-attachments/assets/f087195a-c826-4c98-8e10-164ee2286415)




### Data Visualization
---
![IMG-20241027-WA0017](https://github.com/user-attachments/assets/8db43a5c-42de-48bf-bc84-433a2b6f1111)    ![WhatsApp Image 2024-10-27 at 21 54 39_b8ef3dfc](https://github.com/user-attachments/assets/08a3e76f-f856-477b-8134-bea7096b593f)         
![Screenshot 2024-10-25 133250](https://github.com/user-attachments/assets/57dc64fc-4879-491b-bdfa-9914fc859c42) ![Screenshot 2024-10-26 013644](https://github.com/user-attachments/assets/6d03ea5e-fc41-4248-845a-96f04e353aac)
![REGION SUBTYPE BY REVENUE](https://github.com/user-attachments/assets/56521819-3fca-4033-8f4a-804be595f71f)


 
### Inferences
---
1. Overall Revenue Trends by year
   - BASIC SUBSCRIPTION has the highest Total revenue of  33,776,735.00 followed by Premium Subscription with a total revenue of  16,899,064.00 for the time periods(2022-2024)
   - BASIC SUBSCRIPTION which had the highest Total revenue of  20,332,506.00 as at year 2022 declined to 13,444,229.00 by the  year 2023
   - BASIC SUBSCRIPTION has the highest total number of subscription duration 6,181,221 days for the time periods (2022-2024).
   - Standard Subscription brought in the lowest total revenue of 16,864,376.00 for the time periods(2022-2024).
   - BASIC SUBSCRIPTION has the most number of subscribers (distinct count of 10) as compared to other plans.
   - Customers had multiple subscription times during each time period(2022-2023) and (2023-2024).
   
2. Regional Performance
   - EASTERN REGION accounts for 25.11% of the overall revenue for the time periods(2022-2024) which was for the BASIC SUBSCRIPTION PLAN.
   - The region with the lowest % revenue is the North Region with a 24.9% of the overall revenue for the time periods(2022-2024) which is for the BASIC SUBSCRIPTION PLAN.
   - The customers are evenly distributed among the regions with 5 persons per region making it a total of 20 customers for the entire regions(distinct counts).
 
3. Insights(Strategic Implications to the Business)
   - The BASIC SUBSCRIPTION PLAN brought in the most revenue as compared to other SUBSCRIPTION PLANS which is due to its lower rates compared to others.
   - Customers prefer BASIC SUBSCRIPTION the most due to its cheaper rates.
   - EAST Region is the top performing region for the time periods(2022-2024)
   - East and North region subscribers like cheaper prices which is why they prefer Basic subscription
   - The overall total revenue figures dropped from  40,538,438.00 in 2022 to  27,001,737.00 in 2023 among all regions.


 
### Conclusion
---
More emphasis should be placed on increasing revenue from the Standard Subscription type.
In order to achieve this;
- The Company can focus on subscription bonuses e.g referral bonuses, buy 2years get 1 extra month free, reductions in prices,etc for renewals to boost sales higher and thereafter the company's revenue. This will also help to retain its present customers, increase the numbers of subscribers and also bring back old customers i.e causing them to renew subscriptions.
- Also, the Company has to review its Internet services(improve its services)
- Due to the decline in the subscription numbers and revenue for the 2023 time period as compared to when the company newly started in 2022, a survey should be carried out to get more understanding of what caused the decline.




                                                               |B|
## Regional Performances
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.
![Screenshot 2024-11-05 102846](https://github.com/user-attachments/assets/061e4288-b79e-4c26-b1c5-eecea465c530)  ![Screenshot 2024-11-05 103657](https://github.com/user-attachments/assets/5b10b361-6df1-4c2d-bed5-a37cf13fc7e6)
![Screenshot 2024-11-05 103201](https://github.com/user-attachments/assets/ffaf574d-d447-4b53-84f2-afae5f53d626)  ![Screenshot 2024-11-05 103217](https://github.com/user-attachments/assets/29f3bfaf-ea4e-4906-845f-03dc1f941a5d) 



### Data Visualization
---
![revenue by region](https://github.com/user-attachments/assets/c7c39f9e-88ca-4f89-ac92-3a1b2ab37813)

![revenue by no of cancellations](https://github.com/user-attachments/assets/9b1b4e33-e59f-4819-b5d7-b8da42cccf05)

![REGION SUBTYPE BY REVENUE](https://github.com/user-attachments/assets/88eba379-c909-41f4-9c7f-0b26dcddf836)



   
### Inferences
---
1. Overall Revenue Trends by Year
   - EASTERN REGION accounts for 25.11% of the overall revenue for the time periods(2022-2024) which was for the BASIC SUBSCRIPTION PLAN.
   - The region with the lowest % revenue is the North Region with a 24.9% of the overall revenue for the time periods(2022-2024) which is for the BASIC SUBSCRIPTION PLAN.
   - The East Region had the highest decline by 34.4% in Subscription revenue from 2022 to 2023
   - EAST REGION brought in revenue of  10,242,555.00, which was the highest followed by SOUTH Region with revenue of 10,126,800.00 in 2022.
   
2. Performance by Customers
   - The customers are evenly distributed among the regions with 5 persons per region making it a total of 20 customers for the entire regions(distinct counts).
   - LIAM brought in the highest revenue of  3,437,444.00 in 2022/2023 SUBSCRIPTION PERIOD in the EAST Region
   - MARIA brought in the lowest revenue of  3,326,162.00 in 2022/2023 SUBSCRIPTION PERIOD in the WEST Region
   - SOPHIA brought in the highest revenue of  3,414,995.00 in 2023/2024 SUBSCRIPTION PERIOD in the SOUTH Region
   - CHRIS brought in the lowest revenue of  3,351,225.00 in 2023/2024 SUBSCRIPTION PERIOD in the NORTH Region 

3. Performance by Subscription type
   - The BASIC subscription type is the most popular subscription type as there are two regions(EAST and NORTH) purchasing that type for both subscription periods(2022-2023 and 2023-2024)
   
4. Insights(Strategic Implications to the Business)
   - EAST Region is the top performing region for the time periods(2022-2024)
   - East and North region subscribers like cheaper prices which is why they prefer Basic subscription however NORTH'S revenue contribution is very low compared to other regions.
   - The total revenue figures dropped from 40,538,438.00 in 2022 to 27,001,737.00(difference of 13,536,701) in 2023 for all regions.
   - Customers had multiple subscription per subscription period.
   - In 2022 when the Subscription Company started providing services, Customers in the EAST region brought in revenue of   10,242,555.00, which was the highest followed by SOUTH Region with revenue of 10,126,800.00.
   - However in 2023, there was a significant drop in subscription revenue by 34.4% in the EAST Region while the SOUTH Region had the highest decline in subscription revenue by 33.13%.
   - The set of Customers that subscribed in 2022 did not renew in 2023. There are different sets of Customers for both Subscription terms(2022-2023 and 2023-2024 this may be due to poor customer service or dissatisfaction of subscription service by customers.
 
### Conclusion
---
- More emphasis should be placed on reviewing the subscription services available in the North region. 
- The Company can focus on subscription bonuses e.g referral bonuses, buy 2years get 1 extra month free, reductions in prices,etc for renewals to boost sales higher and thereafter the company's revenue. This will also help to retain its present customers, increase the numbers of subscribers and also bring back old customers i.e causing them to renew subscriptions. 
- The Company needs to review its Internet services as the subscription numbers and revenue significantly dropped in the 2023 time period as compared to when the company newly started in 2022. This might have been caused by the fact that the set of customers that subscribed for 2022-2023 subscription period are different from the present subscribers and the present subscribers are smaller in number than the previous(12 customers in 2022 and 8 customers in 2023). Information on the sales price should be able to shed more light on the decline in total revenue.

                                                               |C|
## Total Revenue
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.
![Screenshot 2024-11-05 102859](https://github.com/user-attachments/assets/231928bc-e749-4c94-91e8-3b1a8dde7328)
![Screenshot 2024-11-05 102846](https://github.com/user-attachments/assets/de7456df-3b3c-4ef7-a7c2-de4bec413a05)
![Screenshot 2024-11-05 103012](https://github.com/user-attachments/assets/2d8ad9d5-deef-4f2e-9814-907ef0b18984)
![Screenshot 2024-11-05 103650](https://github.com/user-attachments/assets/619cbf14-4cd9-4d75-b8a2-8f6480b12a75)
![Screenshot 2024-11-05 105719](https://github.com/user-attachments/assets/64e98ad4-de3d-45ef-bb1f-6d61b23d83c7)



### Data Visualization
---
![revenue by subscription type](https://github.com/user-attachments/assets/3091731d-3b62-4463-bde5-8e4e672783c0)      ![revenue by region](https://github.com/user-attachments/assets/5c065d8f-b04c-4245-98f1-339e298601a3)


![Screenshot 2024-10-30 164641](https://github.com/user-attachments/assets/d47161a6-5d1b-4f3c-981b-8707882a8f51)           ![Screenshot 2024-10-30 163013](https://github.com/user-attachments/assets/d284fbf9-3e00-4a52-b7de-be831ab6177d)



   
### Inferences
---
1. Overall Revenue Trends by Month and Year
   - JULY has the highest %Revenue of 10.04 of the overall Revenue of   67,540,175.00 followed by the month of JUNE with 10.01%%.
   - OCTOBER had the lowest %Revenue of 4.98% of the overall Revenue of 149.82million followed by the month of SEPTEMBER with 4.99%.
   - 2022/2023 had the highest Total Revenue of 60% of the overall Revenue while 2023/2024 had 40% of the overall Revenue
   
2. Regional Performance
  
   - EASTERN REGION accounts for 25.11% of the overall revenue for the time periods(2022-2024) which was for the BASIC SUBSCRIPTION PLAN.
   - The region with the lowest % revenue is the North Region with a 24.9% of the overall revenue for the time periods(2022-2024) which is for the BASIC SUBSCRIPTION PLAN.
   - The East Region had the highest decline by 34.4% in Subscription revenue from 2022 to 2023
   - EAST REGION brought in revenue of 10,242,555.00, which was the highest followed by SOUTH Region with revenue of 10,126,800.00 in 2022.

3. Customer Performance
   - LIAM brought in the highest revenue of  3,437,444.00 in 2022/2023 SUBSCRIPTION PERIOD in the EAST Region
   - MARIA brought in the lowest revenue of  3,326,162.00 in 2022/2023 SUBSCRIPTION PERIOD in the WEST Region
   - SOPHIA brought in the highest revenue of  3,414,995.00 in 2023/2024 SUBSCRIPTION PERIOD in the SOUTH Region
   - CHRIS brought in the lowest revenue of  3,351,225.00 in 2023/2024 SUBSCRIPTION PERIOD in the NORTH Region 
   - Customers had multiple subscription times during each time period(2022-2023) and (2023-2024). Each Customer subscribed on an average of 1,689.35 times.

4. Performance by Subscription type
   - The BASIC subscription type is the most popular subscription type as there are two regions(EAST and NORTH) purchasing that type for both subscription periods(2022-2023           and 2023-2024).
   - BASIC SUBSCRIPTION has the highest Total revenue of  33,776,735.00 followed by Premium Subscription with a total revenue of  16,899,064.00 for the time periods(2022-2024)
   - BASIC SUBSCRIPTION which had the highest Total revenue of  20,332,506.00 as at year 2022 declined to 13,444,229.00 by the  year 2023
   - BASIC SUBSCRIPTION has the highest total number of subscription duration 6,181,221 days for the time periods (2022-2024).
   - Standard Subscription brought in the lowest total revenue of 16,864,376.00 for the time periods(2022-2024).
   - BASIC SUBSCRIPTION has the most number of subscribers (distinct count of 10) as compared to other plans.
   
5. Insights(Strategic Implications to the Business)
   - The Company has not been able to retain its customers. None of the past customers for subscription period 2022/2023 renewed their subscription, although some did not cancel      their subscription.
   - The Company's Subscription Revenue greatly declined by 20.04% in the year 2023/2024 subscription period, this might be due to both the number of subscribers which is 33.33%      (8 subscribers) lower compared to the 2022/2023 subscription period(there were 12 subscribers).

### Conclusion
---

A survey can be carried out to get more understanding of what caused the decline in Revenue in terms of the prices and what customers feel about using their services.    However, these are my recommendations;
- Emphasis should be placed on BASIC subscription type and its prices can be adjusted a bit higher to cause Revenue to rise.
- The Company can focus on giving subscription bonuses e.g referral bonuses, buy 2years get 1month free, reductions in prices,etc for renewals to boost sales higher and thereafter, also increase the company's revenue.  This will help to retain its present customers, increase the numbers of subscribers and also bring back old customers i.e causing them to renew subscriptions.


                                                                    |D|

## Average Revenue by Region, Subscription types
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-11-05 122925](https://github.com/user-attachments/assets/f560460b-91cc-4be5-a54a-746f9bbedbe5)
![Screenshot 2024-11-05 122715](https://github.com/user-attachments/assets/e57459ca-a8b8-4e94-a76c-1ce229862153)




### Data Visualization
---

![AVG REV BY REGION BY YEAR](https://github.com/user-attachments/assets/bb7c1fc0-8c29-4bf1-b5a8-028b1f9d5561)  ![AVG REV BY YEAR](https://github.com/user-attachments/assets/4870f2d4-0d6e-4510-9f52-0d7a14b33f6f)
![AVG BY SUB TYPE](https://github.com/user-attachments/assets/f7f67a25-14ba-4d7c-a6d6-713201ae329e)

   
### Inferences
---
1. Overall Average Trends by Year
   - In 2022/2023 Subscription period, each customer brought in an average of  1,999.43 to the business
   - In 2023/2024 Subscription period, each customer brought in an average of  1,998.35 to the business
   - The Average revenue declined by 0.05% in the 2023/2024 Subscription period.
   - SOPHIA is the best performing customer with an average revenue of  2,010.00. In contrast, CHRIS brought in an average of 1,980.63.
   
2. Regional Performance
   - The WEST region brought in the highest overall average revenue of  2,002.90 per subscriber for both subscription periods.
   - The NORTH region brought in the least average revenue of  1,994.30 per subscriber for both subscription periods.

 
3. Performance by Subscription types
   - STANDARD subscription type had the highest average revenue of 2,002.90 per subscriber for both subscription periods.
   - BASIC subscription type brought in the least which was  1,996.14 per subscriber for both subscription periods.

   
4. Insights(Strategic Implications to the Business)
   - BASIC subscription type brought in the least average revenue for both subscription periods.
   - The Company has not been able to retain its customers. None of the past customers for subscription period 2022/2023 renewed their subscription, although some did not cancel  their subscription.
   - The Company's Subscription Revenue greatly declined by 20% in the year 2023/2024 subscription period, this might be due to both the number of subscribers which is 33.33%(8       subscribers) lower compared to the 2022/2023 subscription period(there were 12 subscribers). 
  
 
### Conclusion
---
- The Price of BASIC SUBSCRIPTION TYPE should be reviewed higher as it has a high subscriber list, a price uncrease will boost the company's average revenue per subscriber .
However, the Company needs to be very careful in taking this action as this might cause some subscibers to cancel or not renew their subscriptions.
- Follow-ups and surveys should be done to understand why customers are not renewing subscriptions after a subscription period and why they are cancelling susbscriptions.


                                                               |E|
## Best Performing Customers by Revenue
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-11-05 122715](https://github.com/user-attachments/assets/bbb61719-726e-49c7-a8ca-4998334eeb79)

![Screenshot 2024-11-05 103012](https://github.com/user-attachments/assets/f0b3d781-8ed0-4af7-809a-f8d4f4011b64)



### Data Visualization
---

![best performing customers-2022 and 2023](https://github.com/user-attachments/assets/55a0f67e-7340-42c0-bef8-de686e8b5fe6)  

![best performing customers-2022](https://github.com/user-attachments/assets/9deba94d-dd39-4069-a28e-4cb9fbd67810)

![best performing customers-2023](https://github.com/user-attachments/assets/ef108e8d-fd63-4013-bf47-d8d1bc7c8b84) 



   
### Inferences
---
1. Overall Revenue trends by Year
   - LIAM brought in the highest revenue of  3,437,444.00 in 2022/2023 SUBSCRIPTION PERIOD followed by MIKE & SOPHIA
   - MARIA brought in the lowest revenue of  3,326,162.00 in 2022/2023 SUBSCRIPTION PERIOD
   - SOPHIA brought in the highest revenue of  3,414,995.00 in 2023/2024 SUBSCRIPTION PERIOD 
   - CHRIS brought in the lowest revenue of  3,351,225.00 in 2023/2024 SUBSCRIPTION PERIOD  
   - Customers had multiple subscription times during each time period(2022-2023) and (2023-2024). Each Customer subscribed on an average of 1,689.35 times.
   
2. Regional Performance
   - The number of customers are evenly distributed among the regions(5 customers each).
   - The region with the top performing customers for both Subscription periods is the EAST REGION.
     
3. Insights(Strategic Implications to the Business)
   - LIAM is a very profitable customer who has brought in the highest revenue for both periods.
   - The EAST REGION is the best region so far in terms of revenue distribution.
   - MARIA is the least performing customer.
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
![Screenshot 2024-11-05 102937](https://github.com/user-attachments/assets/fc48196d-3485-4049-9037-68109083a7c2)
![Screenshot 2024-11-05 102846](https://github.com/user-attachments/assets/37e2062a-6215-4513-889a-8368dd8054ea)
![Screenshot 2024-11-05 103139](https://github.com/user-attachments/assets/54ed6f5c-f2ba-4a99-bf34-01ec2d60a268)
![Screenshot 2024-11-05 130348](https://github.com/user-attachments/assets/3f8368c7-4f94-4b06-aafd-286b45aeb8e0)




### Data Visualization
---

![Screenshot 2024-10-25 133304](https://github.com/user-attachments/assets/588a583a-e879-41b6-aacc-b14521bd0bea)

![Region by avg sub duration](https://github.com/user-attachments/assets/8a450849-95aa-4ed4-b305-4fecc4f5226e)

![Year by avg subscrip duration](https://github.com/user-attachments/assets/6a57515b-7522-4d67-b162-16016f44d4d3)

   
### Inferences
---
1. Overall Subscription Trends by Year
   - The average number of days of subscription for each customer in 2022/2023 subscription period is 365.00.
   - In 2023/2024 subscription period for each customer, the average number of subscription days is 365.87.
   - The average subscription duration each customer subscribed for is 365.35 for both subscription periods.
   
2. Regional Performance
   - EAST, SOUTH & WEST REGIONS have the highest average subscription duration of 365.40 respectively
   - NORTH REGION has the lowest average subscription duration of 365.20
 
3. Insights(Strategic Implications to the Business)
   - The average subscription duration per customer is 365.35. This tells us that each customer subscribes for atleast a year.
   - The NORTH is underperforming as it has the least subscription duration.
### Conclusion
---
- The organisation should encourage the customers in the NORTH REGION by giving discounts, and promos to boost their subscriptions, and thereby, increasing the organisation's revenue.
- The Company can focus on giving subscription bonuses e.g referral bonuses, buy 2years get 1month free, reductions in prices,etc for renewals to boost sales higher and thereafter, also increase the company's revenue.  This will help to retain its present customers, increase the numbers of subscribers and also bring back old customers i.e causing them to renew subscriptions.
- The company should create a budget to accommodate all these




                                                                  |G|
## Key trends in Cancellations and renewals
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.
![Screenshot 2024-11-05 103123](https://github.com/user-attachments/assets/a321a93e-41a1-4190-a07b-9dc9ee8fd884)
![Screenshot 2024-11-05 103110](https://github.com/user-attachments/assets/12ded137-ee42-421e-8707-85f9e51bd09b)
![Screenshot 2024-11-05 103055](https://github.com/user-attachments/assets/ac2a5101-1079-43b8-9265-fa94c5b523f2)
![Screenshot 2024-11-05 103657](https://github.com/user-attachments/assets/a901c761-abf6-444e-95f7-88cb1c66de7c)


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
   - APRIL had the highest number of customers that cancelled. Total of 2customers. Total subscription canceled was  3,349.00.
   - There were no cancellations in MARCH, JULY, NOVEMBER and DECEMBER
   - Subscription period 2022/2023 had the most cancellations of  8,411 subscriptions which is 44.57% of the grand total of  15,175 Canceled Subscriptions.
   - Presently there are  18,612 active subscriptions.
2. Regional Performance
   - EAST REGION is the only region without cancellation
   - NORTH REGION has the highest number of cancellations 5,067
   - Cancellations count is likely to decrease by 0.6 on average when region is East compared to the other regions
   - Cancellations count is likely to increase by 0.19 when Regions are West and South.
   - Cancellations count is likely to increase by 0.22 when Region is North
   
3. Customer Performance
   - A total of 9 Customers canceled their subscription during the subscription periods.
   - 5 customers canceled in 2022.
   - 4 customers canceled in 2023.
 
4. Insights(Strategic Implications to the Business)
   -   9 customers canceled before their subscription elapsed. This might have been due to dissatisfaction from the internet subscription, poor network or poor customer care            service.
   -   11 customers still have active subscription
   -   7 customers finished the tenure of the subscription period of 2022/2023 but are yet to renew subscriptions
   -   4 customers finished the tenure of the subscription period of 2023/2024 but are yet to renew subscriptions
   -   The East Region is the best region for the Company's services with no cancellation of subscriptions. 
 
### Conclusion
---

- Customer care agents need to reach out to customers(new and old) to followup on subscription renewals and propose possible discounts.
- There is need to focus on encouraging current customers to renew their subscriptions and also bring in new customers in the East Region. This can be achieved by introducing things like; discounts on subscriptions, lower prices for new customers for first 1 subscription year, then normal price following that.


### Tables
---
💻💻
🥇🥇
Total Revenue per Year
|YEAR| TOTAL REVENUE|
|-----| -----|
|2022-2023|40,538,438.00|
|2023-2024|27,001,737.00|

👩‍💻👩🏾‍💻 
Average Revenue per Year
|YEAR| AVERAGE REVENUE|
|-----| -----|
|2022-2023|1,999.43|
|2023-2024|1,998.35|

