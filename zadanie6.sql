/*
Tabele: category oraz product. Twoje zadanie: znajdź cenę najtańszego produktu każdej kategorii, a rezultat swojej pracy przedstaw w dwóch kolumnach. Pierwsza - category_name (nazwa kategorii), druga - min_price (ceny najtańszych produktów).

Nie zapomnij pogrupować wyników według nazw kategorii!

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
SELECT MIN (product.price) AS min_price, category.name AS category_name
FROM product
INNER JOIN category
ON category.id= product.category_id
GROUP BY category.name;
