-- ����� 1 - ������� ��������� �� ������� ������������ ���� ����
SELECT airportcode, COUNT(*) AS occured_events
FROM Event
GROUP BY airportcode;

-- ����� 2 - ��� ������� ��������� ����� ������� ���� ������� ������� �񳺿 ������� ������������ ����
SELECT eType AS event, ROUND(COUNT(eType) * 100 / (SELECT COUNT(*) FROM Event), 2)
AS percentage
FROM Event
GROUP BY eType;

-- ����� 3 - ������� ������� ����� �� ������ �� 2016 ��
SELECT month, COUNT(*) AS times_occured
FROM (
    SELECT EXTRACT(MONTH FROM starttime) AS month
    FROM Event
    JOIN Periods ON Event.periodid = Periods.periodid
    WHERE EXTRACT(YEAR FROM starttime) = '2016' AND EXTRACT(YEAR FROM endtime) = '2016' AND TRIM(eType)='Rain'
)
GROUP BY month
ORDER BY month;