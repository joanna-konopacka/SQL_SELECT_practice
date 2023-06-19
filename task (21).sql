/*Poćwiczmy wyodrębnianie fragmentów z daty na przykładzie tabeli staff. Uzyskaj liczbę pracowników zatrudnionych każdego roku, a rezultat przedstaw w dwóch kolumnach - year (lata z kolumny date_of_hiring) oraz number_of_staff (liczba pracowników zatrudnianych w kolejnych latach).

____________________________________staff__________________________________________________________________________________________
| id  |	first_name | last_name | sex    | birth_date | position     | phone         | salary | date_of_hiring | date_of_dismissal |
| 1   |	Stepan     | Shvets    | male   | 1990-05-07 | teacher      | +380984805362 | 7500   | 2013-07-01     | 2017-01-15        |
...................................................................................................................................
| 8   | Yuriy      | Dyachuk   | male   | 1988-12-0  */

SELECT EXTRACT(YEAR FROM date_of_hiring) AS year, COUNT(*) AS number_of_staff
FROM staff
GROUP BY year;
