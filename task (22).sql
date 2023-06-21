/*Masz przed sobą tabelę pupil. Uzyskaj liczbę studentów, którzy obchodzą urodziny w bieżącym miesiącu kalendarzowym, a powstałej w rezultacie kolumnie nadaj nazwę number_of_pupils.

____________________________________pupil_____________________________________________________
| id  |	first_name | last_name | sex    | birth_date | mother_phone  | father_phone  | city  |
| 1   |	Eugen      | Tsven     | male   | 2000-12-01 | +380967826174 | +380998161172 | Kyiv  |
..............................................................................................
| 10  | Inna       | Kostenko  | female | 2009-10- */


SELECT COUNT(*) AS number_of_pupils
FROM pupil
WHERE EXTRACT(MONTH FROM birth_date) = EXTRACT (MONTH FROM CURRENT_DATE)

