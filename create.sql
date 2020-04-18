CREATE TABLE EventType (
    eType VARCHAR(63) NOT NULL PRIMARY KEY
    );

CREATE TABLE EventSeverity (
    severity VARCHAR(63) NOT NULL PRIMARY KEY
    );

CREATE TABLE TimeZones (
    timezone VARCHAR(63) NOT NULL PRIMARY KEY
    );

CREATE TABLE Periods (
    periodid NUMBER(20) NOT NULL PRIMARY KEY,
    starttime TIMESTAMP NOT NULL,
    endtime TIMESTAMP,
    timezone VARCHAR(63) NOT NULL REFERENCES TimeZones(timezone)
    );
    
CREATE TABLE States (
    statename VARCHAR(63) NOT NULL PRIMARY KEY
    );

CREATE TABLE County (
    county VARCHAR(63) NOT NULL PRIMARY KEY,
    state VARCHAR(63) NOT NULL REFERENCES States(statename)
    );

CREATE TABLE City (
    city VARCHAR(63) NOT NULL PRIMARY KEY,
    county VARCHAR(63) NOT NULL REFERENCES County(county)
    );

CREATE TABLE ZipCodes (
    zipcode Number(5) NOT NULL PRIMARY KEY
    );

CREATE TABLE Locations (
    locationid NUMBER(20) NOT NULL PRIMARY KEY,
    locationlat DECIMAL(9, 6) NOT NULL,
    locationlng DECIMAL(9, 6) NOT NULL
    );

CREATE TABLE Address (
    addressid NUMBER(20) NOT NULL PRIMARY KEY,
    zipcode NUMBER(5) NOT NULL REFERENCES ZipCodes(zipcode),
    city VARCHAR(63) NOT NULL REFERENCES City(city),
    locationid NUMBER(20) NOT NULL REFERENCES Locations(locationid)
    );
    
CREATE TABLE Airport (
    airportcode VARCHAR(63) NOT NULL PRIMARY KEY,
    addressid NUMBER(20) NOT NULL REFERENCES Address(addressid)
    );

CREATE TABLE Event (
    eventid VARCHAR(63) NOT NULL PRIMARY KEY,
    eType VARCHAR(5) NOT NULL REFERENCES EventType(eType),
    severity VARCHAR(63) NOT NULL REFERENCES EventSeverity(severity),
    periodid NUMBER(20) NOT NULL REFERENCES Periods(periodid),
    airportcode VARCHAR(63) NOT NULL REFERENCES Airport(airportcode)
    );