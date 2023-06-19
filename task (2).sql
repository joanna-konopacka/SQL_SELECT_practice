/*
Przedstaw dane o każdym produkcie z kategorii Beverages w formacie [product name] - [amount] units, a powstałej w ten sposób kolumnie nadaj alias product_information. Na przykład:

Tea - 42 units
Water - 51 units

_______category_____
| id |    name      | 
| 2  | Seafood      | 
.....................
| 4  | Grains       |

__________________________product_____________________
| id | name        | amount   | price   | category_id | 
| 2  | Shrimp      | 50       | 450     | 2           |
.......................................................
| 8  | Flour       | 20       | 60      | 4       
*/

SELECT CONCAT (product.name,' - ',product.amount,' units') AS product_information
FROM product
INNER JOIN category
ON category.id= product.category_id
WHERE category.name= 'Beverages';