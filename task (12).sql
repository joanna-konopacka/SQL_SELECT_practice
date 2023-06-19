/*
Odnajdź nazwy departamentów (tabela department) i określ liczbę należacych do każdego z nich pracowników (tabela employee). Zwróć rezultat w dwóch kolumnach: department_name i number_of_employees.

Nie zapomnij o pogrupowaniu rezultatów!

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

SELECT department.name AS department_name, COUNT(*) AS number_of_employees
FROM department
INNER JOIN employee
ON department.id= employee.department_id
