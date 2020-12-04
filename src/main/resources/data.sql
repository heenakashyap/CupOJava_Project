DROP TABLE IF EXISTS transitUsers;
DROP TABLE IF EXISTS routeStop;
DROP TABLE IF EXISTS stop;
DROP TABLE IF EXISTS route;


CREATE TABLE transitUsers (
	id INT AUTO_INCREMENT PRIMARY KEY,
	username varchar(250) NOT NULL,
	password varchar(250) NOT NULL,
	firstName varchar(250) NOT NULL,
	lastName varchar(250) NOT NULL,
	address varchar(250) NOT NULL,
	city varchar(250) NOT NULL,
	phoneNo varchar(250) NOT NULL,
	email varchar(250) NOT NULL, 
	dob date NOT NULL,
	UNIQUE (username)
);


CREATE TABLE route (
	
	id INT AUTO_INCREMENT PRIMARY KEY,
	routeType varchar(16) NOT NULL,
	destination varchar(128) NOT NULL,
	origin varchar(128) NOT NULL
	
	
	
);

CREATE TABLE stop (
	stopID INT AUTO_INCREMENT PRIMARY KEY,
	stopName varchar(32) NOT NULL	
);

CREATE TABLE routeStop	(
	routeID INT NOT NULL,
	stopID INT NOT NULL,
	direction varchar(32) NOT NULL,
	stopNumber INT NOT NULL,
	timeToThisStop INT NOT NULL,
	
	PRIMARY KEY (routeID, stopID, direction),
	FOREIGN KEY (routeID) REFERENCES route(id),
	FOREIGN KEY (stopID) REFERENCES stop(stopID)
	
);

