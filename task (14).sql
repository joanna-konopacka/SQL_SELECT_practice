/*
Przed Tobą dwie tabele, pupil i scoreboard. Uzyskaj średnią ocenę z każdego przedmiotu dla studentów z Kyiv. Przedstaw rezultat w dwóch kolumnach, subject (nazwy przedmiotów) oraz average mark (średnie oceny). Nazwy przedmiotów posortuj alfabetycznie.

Nie zapomnij o pogrupowaniu rezultatów!
____________________________________pupil_____________________________________________________
| id  |	first_name | last_name | sex    | birth_date | mother_phone  | father_phone  | city  |
| 1   |	Eugen      | Tsven     | male   | 2000-12-01 | +380967826174 | +380998161172 | Kyiv  |
..............................................................................................
| 10  | Inna       | Kostenko  | female | 2009-10-15 | +380981865416 | +380981458216 | Irpin |

_________________________scoreboard___________________________
| id  | pupil_id  | subject      | mark | semester        | year |
| 4   | 1         | Geography    | 10   | FIRST SEMESTER  | 2015 |
...............................................................
| 167 | 10        | Math         | 9    | SECOND SEMESTER | 2020 | */

SELECT s.subject AS subject, AVG(s.mark) AS avrage mark
FROM scoreboard
INNER JOIN pupil
ON s.pupil_id = p.id
WHERE p.city = 'Kyiv'
GROUP BY s.subject
ORDER BY s.subject ASC
