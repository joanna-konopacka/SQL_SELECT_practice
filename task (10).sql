/*  
Przed sobą masz tabele department oraz employee. Określ najwyższe wynagrodzenie dla każdego z departamentów, a rezultat swojej pracy przedstaw w dwóch kolumnach - department_name (nazwa departamentu) i max_salary (najwyższe pensje).

Nie zapomnij pogrupować wyników wg nazwy departamentu:

____________department__________
| id |    name      |  budget   |
| 1  | Marketing    | 200000    |
.................................
| 8  | Recruiting   | 750000    |

__________________________________employee______________________________
| id | first_name  | last_name   | department_id | hiring_date | salary |
| 1  | Steven      | King        | 1             | 2019-12-02  | 15000  |
.........................................................................
| 22 | Adam        | Fripp       | 8             | 2021-03-17  | 12000  |
*/

SELECT MAX( employee.salary) AS max_salary, department.name AS department_name
FROM employee
INNER JOIN department 
ON department.id= employee.department_id
GROUP BY department.name ;

