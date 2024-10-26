SELECT * FROM CUSTOMER_DATA


1--Total number of customers from each region--
SELECT  APPROX_COUNT_DISTINCT(customerid) AS No_of_Customers , Region from Customer_data
group by Region
order by APPROX_COUNT_DISTINCT(customerid) desc

SELECT APPROX_COUNT_DISTINCT(CUSTOMERID) AS No_of_Customers_North from Customer_data
where Region = 'North'

SELECT APPROX_COUNT_DISTINCT(CUSTOMERID) AS No_of_Customers_South from Customer_data
where Region = 'South'

SELECT APPROX_COUNT_DISTINCT(CUSTOMERID) AS No_of_Customers_East from Customer_data
where Region = 'East'

SELECT APPROX_COUNT_DISTINCT(CUSTOMERID) AS No_of_Customers_West from Customer_data
where Region = 'West'




2--most popular subscription type by the number of customers--
select top 1 SubscriptionType, APPROX_COUNT_DISTINCT(CUSTOMERID) AS No_of_Customers from CUSTOMER_DATA
GROUP BY SubscriptionType
ORDER BY No_of_Customers DESC


3--customers who canceled within 6months--

select customerID, CUSTOMERNAME, Subscription_duration from CUSTOMER_DATA
where canceled ='TRUE' and Subscription_duration>= DATEADD(Month,-6,GETDATE())


4--average subscription duration for all customers--
select AVG(subscription_duration) as AvgSubscriptionDuration from CUSTOMER_DATA


5--customers with subscriptions longer than 12 months--

select customerID,Subscription_duration from CUSTOMER_DATA where Subscription_duration>365
group by CustomerID, Subscription_duration
order by Subscription_duration

select customerID,subscriptionstart, Subscription_duration from CUSTOMER_DATA where DATEDIFF(MONTH,subscriptionstart, GETDATE())>12
group by subscriptionstart, Subscription_duration, CustomerID
order by Subscription_duration desc


6--total revenue by subscription type--
SELECT sum(revenue) AS TotalRevenue, SubscriptionType from Customer_data
Group by SubscriptionType
order by sum(revenue) desc

7--TOP 3 REGION BY SUBSCRIPTION CANCELLATION--

select top 3 Region, sum(count_of_canceled) as TotalnofCancellation from CUSTOMER_DATA where Canceled = 'TRUE'
GROUP BY Region
ORDER BY TotalnofCancellation DESC

8--TOTAL NUMBER OF ACTIVE AND CANCELLED SUBSCRIPTIONS--

select canceled, count(SubscriptionType) as TotalCount from CUSTOMER_DATA
where canceled in ('FALSE','TRUE')
group by Canceled
order by TotalCount desc