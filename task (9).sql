/* 
Poniżej znajdziesz tabele category i product. Odnajdź niepotwarzające się nazwy kategorii, do których należą produkty o cenie poniżej 300.

_______category_____
| id |    name      | 
| 2  | Seafood      | 
.....................
| 4  | Grains       |

__________________________product_____________________
| id | name        | amount   | price   | category_id | 
| 2  | Shrimp      | 50       | 450     | 2           |
.......................................................
| 8  | Flour       | 20       | 60      | 4           |

*/
SELECT DISTINCT c.name
FROM category
INNER JOIN product
ON c.id = p.category_id
WHERE p.price < 300

