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
2. Subscription Start- this is the date when the customer subscription type commenced
3. Subscription End- this is the date when the subscription ends
4. Subscription Duration- this is the time duration of the Subscription service. Calculated as; (Subscription end - Subscription start)
5. Cancellations - The number of Subscription service that has been discontinued. Described as 'True' or 'False'
6. Region- Regions locations where the Internet Provider offers its services
7. Revenue - It is the total amount of income generated by the sale of services provided by the Organisation.

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

![IMG-20241027-WA0030](https://github.com/user-attachments/assets/5f05736c-5bd3-4ab5-aa58-a096f7c3d02b)



                                                               |A|
## Subscription Patterns
---

### Exploratory Data Analysis
---
Use of Pivot table to organise, summarise and analyse the dataset, thereby making it easier to discover patterns and insights in the dataset.

![Screenshot 2024-10-29 105716](https://github.com/user-attachments/assets/de007ff7-605d-41d8-8f7b-d0f989f017f1)

![Screenshot 2024-10-25 132804](https://github.com/user-attachments/assets/20f3003e-2058-4189-ae20-684e98d737b8)  ![Screenshot 2024-10-25 132736](https://github.com/user-attachments/assets/a2395603-1890-4061-8123-54ee3da86124)

![Screenshot 2024-10-26 013524](https://github.com/user-attachments/assets/5ab8df58-310e-4b31-8141-187142c2a724)  ![Screenshot 2024-10-29 102609](https://github.com/user-attachments/assets/cffe7798-e73c-4ca3-ad5a-d25c7d463647)

![Screenshot 2024-10-29 112431](https://github.com/user-attachments/assets/b471436d-bead-4491-b191-fae3d54c03b4)


### Data Visualization
---
![IMG-20241027-WA0017](https://github.com/user-attachments/assets/8db43a5c-42de-48bf-bc84-433a2b6f1111)  ![WhatsApp Image 2024-10-27 at 21 54 39_b8ef3dfc](https://github.com/user-attachments/assets/08a3e76f-f856-477b-8134-bea7096b593f)

![Screenshot 2024-10-26 013644](https://github.com/user-attachments/assets/6d03ea5e-fc41-4248-845a-96f04e353aac)

![Screenshot 2024-10-25 133250](https://github.com/user-attachments/assets/57dc64fc-4879-491b-bdfa-9914fc859c42)

![Screenshot 2024-10-29 113456](https://github.com/user-attachments/assets/3bce4e20-ef18-4637-938b-61a8bd61b984)

 
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





### Data Visualization
---



   
### Inferences
---
1. Overall Sales Trends by Month
   
2. Regional Performance
   
 
4. Insights(Strategic Implications to the Business)
  
 
### Conclusion
---


                                                               |C|
## Total Revenue by Region
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


1. SOUTHERN REGION HAS THE HIGHEST SUBSCRIPTION REVENUE IN THE YEAR PERIODS 2022-2024 WITH AN INCOME OF 37.580MILLION
2. BASIC SUBSCRIPTION PLAN HAS THE HIGHEST NUMBER OF CUSTOMERS(37,500)
3. BASIC SUBSCRIPTION PLAN HAS THE HIGHEST REVENUE OF 74,756,784
4. PREMIUM AND STANDARD SUBSCRIPTION PLAN HAS THE HIGHEST AVERAGE SUBSCRIPTION DURATION OF 365.4
5. BASIC SUBSCRIPTION PLAN HAS THE HIGHEST TOTAL SUBSCRIPTION DURATION OF 13,698,750 DAYS
6. BASIC SUBSCRIPTION PLAN HAD THE HIGHEST NUMBER OF CANCELLATIONS(37,500- HIGHER IN 2022MCOMPARED TO 2023)
7. JAN-AUG HAD THE HIGHEST NUMBER OF CANCELLATIONS AS COMPARED TO SEP-DEC
8. JUNE HAD THE HIGHEST REVENUE WITH 15,078,305

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

