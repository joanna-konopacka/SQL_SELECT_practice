/*Przedstaw informacje o wszystkich daniach z tabeli dish w formacie name: price UAH, a powstałej w rezultacie kolumnie nadaj alias dish_information. Na przykład:

Baked potato: 30 UAH
Omelette: 85 UAH

_______________________dish_______________________
| id  |	name         | price | weight | calories |
| 1   |	Baked potato | 30    | 200    | 300      |
..................................................
| 10  | Omelette     | 85    | 180    | 190      | */


SELECT CONCAT (name,':', price,' 'UAH) AS dish_information
FROM dish
