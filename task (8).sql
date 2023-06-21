/*
Poniżej widzisz tabele department i employee. Twoje zadanie: zwróć pracowników, których nazwiska zawierają literę n. Rezultat powinien uwzględniać wyłącznie imion i nazwiska pracowników oraz nazwy ich departamentów (pomiń pracowników bez departamentów!).

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

SELECT e.first_name, e.last_name, d.department_id
FROM employee
INNER JOIN department
ON department.id = employee.department_id
WHERE employee.last_name LIKE 'n%' AND department.name IS NOT NULL


