
Write an SQL query that reports all product names of the products in the Sales table along with their selling year and price.
For example:

Sales table:
+---------+------------+------+----------+-------+

| sale_id | product_id | year | quantity | price |

+---------+------------+------+----------+-------+

| 1       | 100        | 2008 | 10       | 5000  |

| 2       | 100        | 2009 | 12       | 5000  |

| 7       | 200        | 2011 | 15       | 9000  |

+---------+------------+------+----------+-------+
Product table:
+------------+--------------+

| product_id | product_name |

+------------+--------------+

| 100        | Nokia        |

| 200        | Apple        |

| 300        | Samsung      |

+------------+--------------+

SELECT P.product_name, S.year, S.price
FROM Product
INNER JOIN Sales
ON P.product_id = S.product_id
GROUP BY S.year, S.price;
