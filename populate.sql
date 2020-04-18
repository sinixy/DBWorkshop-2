-- States
INSERT INTO States(statename)
VALUES('CO');
INSERT INTO States(statename)
VALUES('NV');
INSERT INTO States(statename)
VALUES('NY');
INSERT INTO States(statename)
VALUES('OK');
INSERT INTO States(statename)
VALUES('FL');
INSERT INTO States(statename)
VALUES('NJ');

-- County
INSERT INTO County(county, statename)
VALUES('Saguache', 'CO');
INSERT INTO County(county, statename)
VALUES('Sullivan', 'NY');
INSERT INTO County(county, statename)
VALUES('Jackson', 'OK');
INSERT INTO County(county, statename)
VALUES('Monroe', 'FL');
INSERT INTO County(county, statename)
VALUES('Monmouth', 'NJ');
INSERT INTO County(county, statename)
VALUES('White Pine', 'NV');

-- City
INSERT INTO City(city, county)
VALUES('Saguache', 'Saguache');
INSERT INTO City(city, county)
VALUES('Ely', 'White Pine');
INSERT INTO City(city, county)
VALUES('Bethel', 'Sullivan');
INSERT INTO City(city, county)
VALUES('Altus', 'Jackson');
INSERT INTO City(city, county)
VALUES('Marathon', 'Monroe');
INSERT INTO City(city, county)
VALUES('Farmingdale', 'Monmouth');

-- ZipCodes
INSERT INTO ZipCodes(zipcode)
VALUES(81149);
INSERT INTO ZipCodes(zipcode)
VALUES(89301);
INSERT INTO ZipCodes(zipcode)
VALUES(12720);
INSERT INTO ZipCodes(zipcode)
VALUES(73521);
INSERT INTO ZipCodes(zipcode)
VALUES(33050);
INSERT INTO ZipCodes(zipcode)
VALUES(7727);

-- Locations
INSERT INTO Locations(locationid, locationlat, locationlng)
VALUES(1, 38.0972,-106.1689);
INSERT INTO Locations(locationid, locationlat, locationlng)
VALUES(2, 39.2953,-114.8466);
INSERT INTO Locations(locationid, locationlat, locationlng)
VALUES(3, 41.7016,-74.795);
INSERT INTO Locations(locationid, locationlat, locationlng)
VALUES(4, 34.6986,-99.3381);
INSERT INTO Locations(locationid, locationlat, locationlng)
VALUES(5, 24.7263,-81.0477);
INSERT INTO Locations(locationid, locationlat, locationlng)
VALUES(6, 40.1822,-74.1207);

-- Address
INSERT INTO Address(addressid, zipcode, city, locationid)
VALUES(1, 81149, 'Saguache', 1);
INSERT INTO Address(addressid, zipcode, city, locationid)
VALUES(2, 89301, 'Ely', 2);
INSERT INTO Address(addressid, zipcode, city, locationid)
VALUES(3, 12720, 'Bethel', 3);
INSERT INTO Address(addressid, zipcode, city, locationid)
VALUES(4, 73521, 'Altus', 4);
INSERT INTO Address(addressid, zipcode, city, locationid)
VALUES(5, 33050, 'Marathon', 5);
INSERT INTO Address(addressid, zipcode, city, locationid)
VALUES(6, 7727, 'Farmingdale', 6);

-- Airport
INSERT INTO Airport(airportcode, addressid)
VALUES('K04V', 1);
INSERT INTO Airport(airportcode, addressid)
VALUES('KELY', 2);
INSERT INTO Airport(airportcode, addressid)
VALUES('KMSV', 3);
INSERT INTO Airport(airportcode, addressid)
VALUES('KAXS', 4);
INSERT INTO Airport(airportcode, addressid)
VALUES('KMTH', 5);
INSERT INTO Airport(airportcode, addressid)
VALUES('KBLM', 6);

-- TimeZones
INSERT INTO TimeZones(timezone)
VALUES('US/Mountain');
INSERT INTO TimeZones(timezone)
VALUES('US/Pacific');
INSERT INTO TimeZones(timezone)
VALUES('US/Eastern');
INSERT INTO TimeZones(timezone)
VALUES('US/Central');

-- EventSeverity
INSERT INTO EventSeverity(severity)
VALUES('Light');
INSERT INTO EventSeverity(severity)
VALUES('Moderate');
INSERT INTO EventSeverity(severity)
VALUES('Severe');
INSERT INTO EventSeverity(severity)
VALUES('UNK');

-- EventType
INSERT INTO EventType(eType)
VALUES('Snow');
INSERT INTO EventType(eType)
VALUES('Rain');
INSERT INTO EventType(eType)
VALUES('Fog');
INSERT INTO EventType(eType)
VALUES('Precipitation');
INSERT INTO EventType(eType)
VALUES('Cold');
INSERT INTO EventType(eType)
VALUES('Storm');

ALTER SESSION SET nls_timestamp_format = 'YYYY-MM-DD HH24:MI:SS.FF';
-- Periods
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(1, '2016-01-06 23:14:00','2016-01-07 00:34:00','US/Mountain');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(2, '2016-01-07 04:14:00','2016-01-07 04:54:00','US/Mountain');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(3, '2016-01-07 05:54:00','2016-01-07 15:34:00','US/Mountain');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(4, '2018-02-19 19:10:00','2018-02-19 19:36:00','US/Pacific');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(5, '2018-11-05 01:56:00','2018-11-05 02:56:00','US/Eastern');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(6, '2017-01-01 12:50:00','2017-01-01 13:10:00','US/Mountain');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(7, '2016-07-07 18:16:00','2016-07-07 18:36:00','US/Mountain');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(8, '2016-01-06 00:10:00','2016-01-06 00:20:00','US/Central');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(9, '2016-03-27 05:35:00','2016-03-27 05:55:00','US/Central');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(10, '2016-10-03 12:53:00','2016-10-03 13:53:00','US/Eastern');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(11, '2016-11-15 19:53:00','2016-11-16 00:53:00','US/Eastern');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(12, '2016-06-03 01:09:00','2016-06-03 01:46:00','US/Eastern');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(13, '2016-09-01 08:56:00','2016-09-01 09:56:00','US/Eastern');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(14, '2019-04-15 07:14:00','2019-04-15 07:19:00','US/Eastern');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(15, '2019-07-27 01:22:00','2019-07-27 02:15:00','US/Pacific');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(16, '2017-01-02 13:20:00','2017-01-02 19:30:00','US/Mountain');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(17, '2016-11-07 21:37:00','2016-11-07 22:17:00','US/Mountain');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(18, '2016-11-17 23:09:00','2016-11-17 23:29:00','US/Mountain');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(19, '2016-01-06 20:37:00','2016-01-06 20:51:00','US/Mountain');
INSERT INTO Periods(periodid, starttime, endtime, timezone)
VALUES(20, '2016-06-03 12:56:00','2016-06-03 13:56:00','US/Eastern');

-- Event
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-1','Snow','Light',1, 'K04V');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-2','Snow','Light',2,'K04V');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-3','Snow','Light',3,'K04V');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-203234','Snow','Light',4,'KELY');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-188177','Fog','Moderate',5,'KMSV');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-549','Fog','Severe',6,'K04V');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-304','Fog','Moderate',7,'K04V');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-1724','Rain','Light',8,'KAXS');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-1788','Rain','Light',9,'KAXS');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-398909','Rain','Light',10,'KMTH');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-398975','Rain','Light',11,'KMTH');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-400462','Rain','Light',12,'KBLM');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-400618','Rain','Light',13,'KBLM');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-188802','Precipitation','UNK',14,'KMSV');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-203919','Precipitation','UNK',15,'KELY');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-555','Cold','Severe',16,'K04V');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-496','Cold','Severe',17,'K04V');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-502','Storm','Severe',18,'K04V');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-1725','Rain','Light',19,'KAXS');
INSERT INTO Event(EventId, eType, Severity, periodid, airportcode)
VALUES('W-400463','Rain','Light',20,'KBLM');
