/*Przed Tobą tabela staff. Odnajdź informacje o ekspracownikach i przedstaw datę zakończenia przez nich pracy w trzech kolumnach - dzień, miesiąc i rok. Rezultat powinien liczyć łącznie pięć kolumn:

first_name (imiona pracowników)
last_name (nazwiska pracowników);
day (dzień zakończenia pracy);
month (miesiąc zakończenia pracy);
year (rok zakończenia pracy).
____________________________________staff__________________________________________________________________________________________
| id  |	first_name | last_name | sex    | birth_date | position     | phone         | salary | date_of_hiring | date_of_dismissal |
| 1   |	Stepan     | Shvets    | male   | 1990-05-07 | teacher      | +380984805362 | 7500   | 2013-07-01     | 2017-01-15        |
...................................................................................................................................
| 8   | Yuriy      | Dyachuk   | male   | 1988-12
*/

SELECT first_name, last_name, EXTRACT (DAY FROM date_of_dismissal) AS day, EXTRACT(MONTH FROM date_of_dismissal)AS month, EXTRACT(YEAR FROM date_of_dismissal) AS year
FROM staff
WHERE date_of_dismissal IS NOT NULL
