
/*Przechodzimy do ćwiczeń z klauzulą JOIN, a zaczniemy od tabel department i employee. Znajdź first_name, last_name oraz department_name dla pracowników, którzy pracują w departamentach o ID 2 i 7.

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

SELECT employee.first_name, employee.last_name, department.name AS department_name
FROM employee
INNER JOIN department
ON employee.department_id = department.id
WHERE department.id = 2 OR department.id = 7;