# 1. How many suppliers are there? Use a query!
SELECT COUNT(SupplierID)
FROM suppliers;

SELECT *
FROM employees;

# 2. What is the sum of all the employee's salaries?
    SELECT sum(employees.Salary) as total_salary
    FROM employees;
# 3. What is the price of the cheapest item that Northwind sells?
    SELECT min(UnitPrice) as cheapest_item
    FROM products;

# 4. What is the average price of items that Northwind sells?


    SELECT avg(UnitPrice) as average_price
    from products;

# 5. What is the price of the most expensive item that Northwind sells?

    SELECT max(products.UnitPrice)
    FROM products;

# 6. What is the supplier ID of each supplier and the number of items they supply?
SELECT  SupplierID , count(*)
FROM products
GROUP BY SupplierID;

# You can answer this query by only looking at the Products table.

# 7. What is the category ID of each category and the average price of each item in the
# category? You can answer this query by only looking at the Products table.
SELECT CategoryID , avg(UnitPrice)
FROM products
GROUP BY CategoryID ;


# 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of
# each supplier and the number of items they supply? You can answer this query
# by only looking at the Products table.

SELECT products.SupplierID, count(products.ProductID) as items_supplied
FROM products
GROUP BY SupplierID
HAVING items_supplied > 4;
# 9. List the product id, product name, and inventory value (unit price * units on
# hand). Sort the results in descending order by value. If two or more have the
# same value, order by product name.

SELECT ProductID,ProductName, ( UnitPrice * UnitsInStock) as inventory_value
FROM products
ORDER BY inventory_value, ProductName desc;
