-- Запит 1 - вивести аеропорти та кількість зафіксованих ними явищ
SELECT airportcode, COUNT(*) AS occured_events
FROM Event
GROUP BY airportcode;

-- Запит 2 - для кожного погодного явища вивести його відсоток відносно усієї кількості зафіксованих явищ
SELECT eType AS event, ROUND(COUNT(eType) * 100 / (SELECT COUNT(*) FROM Event), 2)
AS percentage
FROM Event
GROUP BY eType;

-- Запит 3 - вивести динаміку дощів по місяцях за 2016 рік
SELECT to_char(starttime, 'Month') AS month, COUNT(*) AS times_occured
FROM (
    SELECT starttime
    FROM Event
    JOIN Periods ON Event.periodid = Periods.periodid
    WHERE EXTRACT(YEAR FROM starttime) = '2016' AND EXTRACT(YEAR FROM endtime) = '2016' AND TRIM(eType)='Rain'
)
GROUP BY to_char(starttime, 'Month')
ORDER BY to_char(starttime, 'Month');
