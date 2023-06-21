/*
The category and product tables are given.

Find the number of products that belong to the 'Meat' or 'Grains' categories.
The result should contain the following columns:
category_name is the category name;
number_of_products is the number of products.
Please note: do not forget to group the result.

_______category_____
| id |    name      |
| 2  | Seafood      |
.....................
| 4  | Grains       |

__________________________product_____________________
| id | name        | amount   | price   | category_id |
| 2  | Shrimp      | 50       | 450     | 2           |
.......................................................
| 8  | Flour       | 20       | 60      | 4    */

SELECT c.name AS category_name, COUNT (*) AS number_of_products
FROM category
INNER JOIN product
ON c.id = p.category_id
WHERE c.name IN ('Meat', 'Grains')
GROUP BY category_name


