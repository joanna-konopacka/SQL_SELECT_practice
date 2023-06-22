Write an SQL query that finds employees who earn more than their managers.
Employee table:

+----+-------+--------+-----------+

| Id | Name  | Salary | ManagerId |

+----+-------+--------+-----------+

| 1  | Joe   | 70000  | 3         |

| 2  | Henry | 80000  | 4         |

| 3  | Sam   | 60000  | NULL      |

| 4  | Max   | 90000  | NULL      |

+----+-------+--------+-----------+

SELECT E1.name
FROM employee E1, employee E2
WHERE E1.managerId = E2.id and E1.salary > E2.salary