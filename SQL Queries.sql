USE project_customer_segmentation;
select*
from customer
limit 10;

select gender,
count(*) AS total_transactions
from customer
group by gender;

select gender,
sum(quantity) AS total_products
from customer
group by gender
order by total_products desc;

select gender,
sum(quantity*price)AS total_revenue
from customer 
group by gender
order by total_revenue desc;

select category,
count(*) AS total_transactions,
sum(quantity) AS total_products,
sum(quantity*price) AS total_revenue
from customer
group by category
order by total_revenue desc;

select age,
count(*) AS total_transactions
from customer
group by age
order by age;

SELECT age, SUM(quantity) AS total_products
from customer
group by age
order by total_products desc;

SELECT age, SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY age
ORDER BY total_revenue DESC;

SELECT
    payment_method,
    gender,
    COUNT(*) AS total_transactions,
    SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY payment_method, gender
ORDER BY total_revenue DESC;

SELECT
    category,
    gender,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_products,
    SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY category, gender
ORDER BY category, total_revenue DESC;

SELECT
    payment_method,
    COUNT(*) AS total_transactions,
    SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY payment_method
ORDER BY total_transactions DESC;
select*from customer;


