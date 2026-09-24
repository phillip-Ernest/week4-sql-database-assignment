SHOW DATABASES;
USE sales;
SELECT
    paymentDate,
    SUM(amount) AS total_amount_paid
FROM payments
GROUP BY paymentDate
HAVING SUM(amount) > 50000
ORDER BY paymentDate DESC
LIMIT 5;
SELECT
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;
SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

SELECT
    checkNumber,
    MAX(amount) AS highest_amount_paid
FROM payments
GROUP BY checkNumber;

     