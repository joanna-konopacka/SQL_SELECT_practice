/* Events
Events table:

+-------------+------------+------------+

| business_id | event_type | occurrences |

+-------------+------------+------------+

| 1           | reviews    | 7          |

| 3           | reviews    | 3          |

| 1           | ads        | 11         |

| 2           | ads        | 7          |

| 3           | ads        | 6          |

| 1           | page views | 3          |

| 2           | page views | 12         |
Write an SQL query to find all active businesses.
An active business is a business that has more than one event type with occurrences greater than the average occurrences of that event type among all businesses.

Aktywna firma to firma, która ma więcej niż jeden typ zdarzenia z wystąpieniami większymi niż średnia liczba wystąpień tego typu zdarzenia wśród wszystkich firm.

*/
SELECT business_id
FROM Events
WHERE event_type IN (
    SELECT event_type
    FROM Events
    GROUP BY event_type
    HAVING COUNT(DISTINCT business_id) > 1
       AND AVG(occurrences) < (
           SELECT AVG(occurrences)
           FROM Events
           WHERE event_type = e.event_type
       )
)
GROUP BY business_id;
