/* Przed Tobą tabele category i product. Uzyskaj łączną liczbę produktów należących do kategorii Seafood, a powstałej w rezultacie kolumnie nadaj alias total_amount:

_______category_____
| id |    name      | 
| 2  | Seafood      | 
.....................
| 4  | Grains       |

__________________________product_____________________
| id | name        | amount   | price   | category_id | 
| 2  | Shrimp      | 50       | 450     | 2           |
.......................................................
| 8  | Flour       | 20       | 60      | 4           | */


SELECT SUM(product.amount) AS total_amount
FROM product
INNER JOIN category 
ON category.id = product.category_id
WHERE category.name = 'Seafood';
