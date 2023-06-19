/*
Poniżej znajdziesz tabele department i employee. Zwróć nazwę departamentu, średnią pensję jego pracowników i liczbę zatrudnionych w nim osób dla każdego departamentu z osobna. Rezultat przedstaw w trzech kolumnach:

department_name (nazwa departamentu);
average_salary (średnia pensja w departamencie);
number_of_employees (liczba osób pracujących w departamencie).
Nie zapomnij o pogrupowaniu!

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
SELECT department.name AS department_name, AVG (employee.salary) AS average_salary, COUNT (*) AS
number_of_employees
FROM employee
INNER JOIN department
ON department.id = employee.department_id
GROUP BY department_name;

