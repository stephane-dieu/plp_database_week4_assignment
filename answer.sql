
-- SQL Assignment: Aggregate Functions and Grouping


-- Question 1
-- Show the total payment amount for each payment date.
-- Display the 5 latest payment dates.

SELECT
    paymentDate,
    SUM(amount) AS total_amount_paid
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- Question 2
-- Find the average credit limit for each customer.

SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- Question 3
-- Find the total price of products ordered.

SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- Question 4
-- Find the highest payment amount for each check number.

SELECT
    checkNumber,
    MAX(amount) AS highest_payment_amount
FROM payments
GROUP BY checkNumber;
