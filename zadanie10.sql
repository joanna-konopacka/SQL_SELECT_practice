/*
Przed Tobą tabele pupil i scoreboard. Odnajdź średnie oceny studenta Anna Ivaniuk dla każdego przedmiotu z osobna, a rezultat w dwóch kolumnach, subject i average_mark. Posortuj je wg średniej oceny, malejąco (skorzystaj z aliasu average_mark).

Nie zapomnij o progrupowaniu!

____________________________________pupil_____________________________________________________
| id  |	first_name | last_name | sex    | birth_date | mother_phone  | father_phone  | city  |
| 1   |	Eugen      | Tsven     | male   | 2000-12-01 | +380967826174 | +380998161172 | Kyiv  |
..............................................................................................
| 10  | Inna       | Kostenko  | female | 2009-10-15 | +380981865416 | +380981458216 | Irpin |

___________________________scoreboard_____________________________
| id  | pupil_id  | subject      | mark | semester        | year |
| 4   | 1         | Geography    | 10   | FIRST SEMESTER  | 2015 |
..................................................................
| 167 | 10        | Math         | 9    | SECOND SEMESTER | 2020
*/


SELECT scoreboard.subject AS subject, AVG(scoreboard.mark) AS average_mark
FROM scoreboard
INNER JOIN pupil 
ON pupil.id = scoreboard.pupil_id
WHERE pupil.first_name = 'Anna' AND pupil.last_name = 'Ivaniuk'
GROUP BY scoreboard.subject
ORDER BY average_mark DESC;
