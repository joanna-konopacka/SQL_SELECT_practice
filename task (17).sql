/*Przed Tobą dwie tabele, pupil oraz scoreboard. Uzyskaj średnie oceny z przedmiotów dla każdego studenta z osobna, a rezultat przedstaw w trzech kolumnach:

first_name (imiona studentów);
last_name (nazwiska studentów);
average_mark (średnie oceny).
Nie zapomnij o pogrupowaniu rezultatów po kolumnie id z tabeli pupil!

____________________________________pupil_____________________________________________________
| id  |	first_name | last_name | sex    | birth_date | mother_phone  | father_phone  | city  |
| 1   |	Eugen      | Tsven     | male   | 2000-12-01 | +380967826174 | +380998161172 | Kyiv  |
..............................................................................................
| 10  | Inna       | Kostenko  | female | 2009-10-15 | +380981865416 | +380981458216 | Irpin |

_________________________scoreboard___________________________
| id  | pupil_id  | subject      | mark | semester        | year |
| 4   | 1         | Geography    | 10   | FIRST SEMESTER  | 2015 |
...............................................................
| 167 | 10        | Math         | 9    | SECOND SEMESTER | 2  */

SELECT p.first_name AS first_name, p.last_name AS last_name, AVG (s.mark) AS average_mark 
FROM pupil
INNER JOIN scoreboard
ON p.id = s.pupil_id
GROUP BY p.id

