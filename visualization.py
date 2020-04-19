import chart_studio
import cx_Oracle
import chart_studio.plotly as py
import plotly.graph_objs as go
import re
import chart_studio.dashboard_objs as dashboard

chart_studio.tools.set_credentials_file(username='sinixy', api_key='TXKCiTgLFxkrrhtVdGtJ')

def getId(url):
    return re.findall("~[A-z.]+/[0-9]+", url)[0][1:].replace('/', ':')

username = 'system'
password = 'databon'
dsn = 'localhost/xe'
connection = cx_Oracle.connect(username, password, dsn)
cursor = connection.cursor()

# Запит 1
query = '''
SELECT airportcode, COUNT(*) AS occured_events
FROM Event
GROUP BY airportcode
'''
airports = []
eventCount = []
cursor.execute(query)
row = cursor.fetchone()
while row:
    airports.append(row[0])
    eventCount.append(row[1])
    row = cursor.fetchone()
data_bar = [go.Bar(x=airports, y=eventCount)]
bar = py.plot(data_bar, filename='barplot.html')

# Запит 2
query = '''
SELECT eType AS event, ROUND(COUNT(eType) * 100 / (SELECT COUNT(*) FROM Event), 2)
AS percentage
FROM Event
GROUP BY eType
'''
events = []
percentage = []
cursor.execute(query)
row = cursor.fetchone()
while row:
    events.append(row[0])
    percentage.append(row[1])
    row = cursor.fetchone()
data_pie = [go.Pie(labels=events, values=percentage)]
pie = py.plot(data_pie, filename='pieplot.html')

# Запит 3
query = '''
SELECT to_char(starttime, 'Month') AS month, COUNT(*) AS times_occured
FROM (
    SELECT starttime
    FROM Event
    JOIN Periods ON Event.periodid = Periods.periodid
    WHERE EXTRACT(YEAR FROM starttime) = '2016' AND EXTRACT(YEAR FROM endtime) = '2016' AND TRIM(eType)='Rain'
)
GROUP BY to_char(starttime, 'Month')
ORDER BY to_char(starttime, 'Month') DESC
'''
months = []
rainCount = []
cursor.execute(query)
row = cursor.fetchone()
while row:
    months.append(row[0])
    rainCount.append(row[1])
    row = cursor.fetchone()
data_scatter = [go.Scatter(x=months, y=rainCount, mode='lines+markers')]
scatter = py.plot(data_scatter, filename='scatterplot.html')

mydash = dashboard.Dashboard()
barId = getId(bar)
pieId = getId(pie)
scatterId = getId(scatter)

box_1 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': barId,
    'title': 'Аеропорти та к-ть зафіксованих ними погодних явищ'
}

box_2 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': pieId,
    'title': 'Зафіксовані погодні явища'
}
 
box_3 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': scatterId,
    'title': 'Дощі за 2016 рік по місяцях'
}
 
mydash.insert(box_1)
mydash.insert(box_2, 'below', 1)
mydash.insert(box_3, 'left', 2)

py.dashboard_ops.upload(mydash, 'Workshop 2')
