/*
Uzyskaj średnie oceny, jakie studenci uzyskują na przestrzeni roku dla każdego przedmiotu z osobna. Ogranicz się do studentów urodzonych po 01.01.2005, a rezultat przedstaw w trzech kolumnach:

subject (nazwa przedmiotu);
year (rok trwania nauki);
average_mark (średnia ocena).
Posortuj przedmioty alfabetycznie, lata - w kolejności malejącej. Nie zapomnij o pogrupowaniu wyników!

____________________________________pupil_____________________________________________________
| id  |	first_name | last_name | sex    | birth_date | mother_phone  | father_phone  | city  |
| 1   |	Eugen      | Tsven     | male   | 2000-12-01 | +380967826174 | +380998161172 | Kyiv  |
..............................................................................................
| 10  | Inna       | Kostenko  | female | 2009-10-15 | +380981865416 | +380981458216 | Irpin |

_________________________scoreboard___________________________
| id  | pupil_id  | subject      | mark | semester        | year |
| 4   | 1         | Geography    | 10   | FIRST SEMESTER  | 2015 |
...............................................................
| 167 | 10        | Math         | 9    | SE

*/
SELECT scoreboard.subject AS subject, scoreboard.year AS year, AVG(scoreboard.mark) AS average_mark
FROM scoreboard
INNER JOIN pupil 
ON pupil.id = scoreboard.pupil_id
WHERE pupil.birth_date > '2005-01-01'
GROUP BY scoreboard.subject, scoreboard.year
ORDER BY scoreboard.subject ASC, scoreboard.year DESC;