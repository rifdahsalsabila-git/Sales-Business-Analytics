/* 
How much company's total revenue?
*/
select sum(quantityOrdered*priceEach) as total_revenue
from orderdetails;


/* 
Top 10 products with the biggest revenue
*/
select products.productName,
       sum(orderdetails.quantityOrdered*orderdetails.priceEach) as revenue
from products
join orderdetails on orderdetails.productCode = products.productCode
group by productName
order by revenue desc
limit 10;


/* 
Top 10 customers based purchase
*/
select customers.customerName,
       sum(orderdetails.quantityOrdered*orderdetails.priceEach) as totalorder
from customers
join orders on orders.customerNumber = customers.customerNumber
join orderdetails on orders.orderNumber = orderdetails.orderNumber
group by customerName
order by totalorder desc
limit 10;


/* 
Revenue each country
*/
select customers.country,
       sum(orderdetails.quantityOrdered*orderdetails.priceEach) as totalorder
from customers
join orders on orders.customerNumber = customers.customerNumber
join orderdetails on orders.orderNumber = orderdetails.orderNumber
group by country
order by totalorder desc;


/* 
Revenue each product line
*/
select productlines.productLine,
       sum(orderdetails.quantityOrdered*orderdetails.priceEach) as totalorder
from productlines
join products on products.productLine = productlines.productLine
join orderdetails on products.productCode = orderdetails.productCode
group by productLine
order by totalorder desc;


/* 
Most sold item based on quantity
*/
select products.productName,
       sum(orderdetails.quantityOrdered) as total_quantity
from products
join orderdetails on products.productCode = orderdetails.productCode
group by productName
order by total_quantity desc;


/* 
Products with the least stocks
*/
select productName, sum(quantityInStock)
from products
group by productName
order by sum(quantityInStock) asc
limit 10;


/* 
Customer with most order
*/
select customers.customerName,
       count(orders.orderNumber) as order_amount
from customers
join orders on orders.customerNumber = customers.customerNumber
group by customerName
order by order_amount desc
limit 10;


/* 
Country with the most customers
*/
select country, count(customerName) as banyak_cust
from customers
group by country
order by banyak_cust desc
limit 10;


/* 
Average price of each products
*/
select products.productLine,
       round(avg(msrp),2) as average_price
from products
group by productLine
order by average_price desc;


/* 
Product that has never been sold
*/
select products.productName
from products
left join orderdetails on products.productCode = orderdetails.productCode
group by productName
having count(orderNumber)=0;


/* 
Customers that has never ordered
*/
select customerName
from customers
left join payments on customers.customerNumber = payments.customerNumber
group by customerName
having count(amount)=0;


/* 
Revenue each month
*/
select year(orders.orderDate) as year,
       month(orders.orderDate) as month,
       sum(orderdetails.quantityOrdered*orderdetails.priceEach) as revenue
from orders
join orderdetails on orders.orderNumber = orderdetails.orderNumber
group by year, month
order by year, month;


/* 
Revenue contributions of each product line
*/
select products.productLine,
       sum(orderdetails.quantityOrdered*orderdetails.priceEach) as revenue,
       sum(orderdetails.quantityOrdered*orderdetails.priceEach)/
       (select sum(quantityOrdered*priceEach) from orderdetails)*100 as contribution_percent
from products
join orderdetails on products.productCode = orderdetails.productCode
group by productLine;