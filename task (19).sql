/*Przed Tobą tabele department i employee. Zwróć wszystkie departamenty, nawet te pozbawione pracowników, a rezultat przedstaw w trzech kolumnach:

department_name (nazwy departamentów);
first_name (imiona pracowników);
last_name (nazwiska).
____________department__________
| id |    name      |  budget   |
| 1  | Marketing    | 200000    |
.................................
| 8  | Recruiting   | 750000    |

__________________________________employee______________________________
| id | first_name  | last_name   | department_id | hiring_date | salary |
| 1  | Steven      | King        | 1             | 2019-12-02  | 15000  |
.........................................................................
| 22 | Adam        | Fripp       | 8             | 2021-03-17 
*/

SELECT d.name AS department_name, e.first_name AS first_name, e.last_name AS last_name
FROM department
RIGHT JOIN employee
ON d.id = e.department_id
GROUP BY d.department_name






