/*
Odnajdź średnią ocenę w każdym przedmiocie dla studenta id = 3 z tabeli pupil, a rezultat przedstaw w formacie [first_name] [last_name]: [subject] - [average mark]. Powstałej w ten sposób kolumnie nadaj alias pupil_mark. Na przykład:

Eugen Tsven: Geography - 10
Eugen Tsven: Math - 10
Eugen Tsven: History - 9
Eugen Tsven: Economics - 11

____________________________________pupil_____________________________________________________
| id  |	first_name | last_name | sex    | birth_date | mother_phone  | father_phone  | city  |
| 1   |	Eugen      | Tsven     | male   | 2000-12-01 | +380967826174 | +380998161172 | Kyiv  |
..............................................................................................
| 10  | Inna       | Kostenko  | female | 2009-10-15 | +380981865416 | +380981458216 | Irpin |

_________________________scoreboard___________________________
| id  | pupil_id  | subject      | mark | semester        | year |
| 4   | 1         | Geography    | 10   | FIRST SEMESTER  | 2015 |
...............................................................
| 167 | 10        | Math         | 9    | SECOND
*/

SELECT CONCAT(pupil.first_name,' ', pupil.last_name,': ',scoreboard.subject,' - ',AVG (scoreboard.mark)) AS pupil_mark
FROM pupil
INNER JOIN scoreboard
ON pupil.id= scoreboard.pupil_id
WHERE pupil.id= 3
GROUP BY scoreboard.subject;
