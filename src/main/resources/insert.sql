insert into transitUsers (username, password, firstName, lastName, address, city, phoneNo, email, dob) VALUES
('whatUsername','thisIsMyPassword','heena','kashyap','scott road', 'vancouver', '7783443334', 'test@gmail.com','2020-10-10'),
('JohnIsFire','john618811','adam','McCallum','scott road', 'vancouver', '7783443334', 'test@gmail.com','2020-10-10'),
('MrAwesome','250geoleo','Peter','ozan','scott road', 'vancouver', '7783443334', 'test@gmail.com','2020-10-10');

insert into route(routeType, destination, origin) VALUES
('bus','Science World', 'Douglas College');

insert into route (routeType, destination, origin) values ('Bus', '82 Randy Avenue', '54 Clyde Gallagher Circle');
insert into route (routeType, destination, origin) values ('Bus', '7 Rigney Center', '309 Dovetail Pass');
insert into route (routeType, destination, origin) values ('Ferry', '174 Bonner Park', '4724 Surrey Trail');
insert into route (routeType, destination, origin) values ('Bus', '425 Arkansas Center', '5 Mcguire Terrace');
insert into route (routeType, destination, origin) values ('Train', '4 Shasta Point', '8755 Fisk Way');
insert into route (routeType, destination, origin) values ('Ferry', '69 Superior Alley', '8 Village Junction');
insert into route (routeType, destination, origin) values ('Bus', '4572 Village Green Center', '50 Erie Lane');
insert into route (routeType, destination, origin) values ('Bus', '4739 Hazelcrest Lane', '1645 Vidon Trail');
insert into route (routeType, destination, origin) values ('Ferry', '6704 Debra Junction', '919 Rusk Hill');
insert into route (routeType, destination, origin) values ('Bus', '6487 Cherokee Avenue', '61784 Susan Street');
insert into route (routeType, destination, origin) values ('Train', '07148 Mitchell Way', '0992 Dunning Road');
insert into route (routeType, destination, origin) values ('Bus', '90878 Blackbird Drive', '399 Crest Line Street');
insert into route (routeType, destination, origin) values ('Bus', '0 Meadow Valley Hill', '310 Autumn Leaf Plaza');
insert into route (routeType, destination, origin) values ('Ferry', '23 Bowman Circle', '8550 Scoville Parkway');
insert into route (routeType, destination, origin) values ('Bus', '31 3rd Alley', '75689 Green Ridge Hill');
insert into route (routeType, destination, origin) values ('Bus', '00829 Bayside Center', '74461 Maple Alley');
insert into route (routeType, destination, origin) values ('Train', '685 Amoth Way', '1 Duke Point');
insert into route (routeType, destination, origin) values ('Train', '3 Fairview Parkway', '4 Merchant Circle');
insert into route (routeType, destination, origin) values ('Ferry', '74630 Jenifer Road', '027 Claremont Alley');
insert into route (routeType, destination, origin) values ('Train', '99 Lakewood Gardens Circle', 'Okay Ave');



insert into stop(stopName) VALUES
('3251 SuncrestAve'),
('Georgia Ave and Green Street'),
('6252 Scott Boulevard'),
('Granville and McCalister');

insert into stop (stopName) values ('Sugar');
insert into stop (stopName) values ('Jenifer');
insert into stop (stopName) values ('Fordem');
insert into stop (stopName) values ('North');
insert into stop (stopName) values ('Hanson');
insert into stop (stopName) values ('Esch');
insert into stop (stopName) values ('Carberry');
insert into stop (stopName) values ('Dennis');
insert into stop (stopName) values ('Ronald Regan');
insert into stop (stopName) values ('Stang');
insert into stop (stopName) values ('Mendota');
insert into stop (stopName) values ('Burning Wood');
insert into stop (stopName) values ('Red Cloud');
insert into stop (stopName) values ('Algoma');
insert into stop (stopName) values ('Waxwing');
insert into stop (stopName) values ('Mesta');
insert into stop (stopName) values ('Arkansas');
insert into stop (stopName) values ('Gale');
insert into stop (stopName) values ('Shasta');
insert into stop (stopName) values ('Service');
insert into stop (stopName) values ('Golf');
insert into stop (stopName) values ('Monterey');
insert into stop (stopName) values ('Merry');
insert into stop (stopName) values ('Memorial');
insert into stop (stopName) values ('Derek');
insert into stop (stopName) values ('Orin');
insert into stop (stopName) values ('Pennsylvania');
insert into stop (stopName) values ('Huxley');
insert into stop (stopName) values ('Park Meadow');
insert into stop (stopName) values ('Walton');
insert into stop (stopName) values ('Summer Ridge');
insert into stop (stopName) values ('Eastlawn');
insert into stop (stopName) values ('Luster');
insert into stop (stopName) values ('Lawn');
insert into stop (stopName) values ('Ilene');
insert into stop (stopName) values ('American Ash');
insert into stop (stopName) values ('Debs');
insert into stop (stopName) values ('Stone Corner');
insert into stop (stopName) values ('Lillian');
insert into stop (stopName) values ('Magdeline');

insert into routeStop(routeID, stopID, direction, stopNumber, timeToThisStop) VALUES
(1,1,'destination',1,3),
(1,2,'destination',2,5),
(1,3,'destination',3,6),
(1,4,'destination',4,4),
(1,4,'origin',1,4),
(1,3,'origin',2,6),
(1,2,'origin',3,5),
(1,1,'origin',4,3);

insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (1, 1, 6, 'origin', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (1, 2, 3, 'origin', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (1, 3, 1, 'destination', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (1, 4, 3, 'destination', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (1, 5, 9, 'destination', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (1, 6, 6, 'origin', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (1, 7, 6, 'origin', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (1, 8, 2, 'destination', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (1, 9, 6, 'origin', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (2, 1, 6, 'destination', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (2, 2, 7, 'destination', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (2, 3, 5, 'origin', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (2, 4, 8, 'origin', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (2, 5, 8, 'origin', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (2, 6, 7, 'destination', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (2, 7, 2, 'destination', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (2, 8, 7, 'origin', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (2, 9, 5, 'origin', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (3, 1, 2, 'destination', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (3, 2, 5, 'destination', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (3, 3, 3, 'origin', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (3, 4, 10, 'destination', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (3, 5, 4, 'destination', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (3, 6, 8, 'origin', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (3, 7, 7, 'destination', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (3, 8, 1, 'origin', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (3, 9, 7, 'destination', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (4, 1, 7, 'origin', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (4, 2, 10, 'origin', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (4, 3, 7, 'destination', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (4, 4, 10, 'origin', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (4, 5, 7, 'destination', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (4, 6, 9, 'destination', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (4, 7, 7, 'origin', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (4, 8, 2, 'destination', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (4, 9, 4, 'destination', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (5, 1, 3, 'origin', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (5, 2, 1, 'destination', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (5, 3, 9, 'destination', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (5, 4, 9, 'origin', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (5, 5, 3, 'destination', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (5, 6, 9, 'destination', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (5, 7, 6, 'destination', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (5, 8, 6, 'destination', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (5, 9, 7, 'destination', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (6, 1, 2, 'origin', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (6, 2, 6, 'origin', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (6, 3, 4, 'destination', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (6, 4, 2, 'origin', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (6, 5, 2, 'destination', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (6, 6, 5, 'destination', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (6, 7, 6, 'origin', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (6, 8, 7, 'destination', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (6, 9, 10, 'destination', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (7, 1, 10, 'destination', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (7, 2, 10, 'origin', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (7, 3, 10, 'origin', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (7, 4, 8, 'destination', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (7, 5, 6, 'destination', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (7, 6, 4, 'origin', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (7, 7, 8, 'origin', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (7, 8, 8, 'origin', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (7, 9, 8, 'destination', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (8, 1, 3, 'destination', 5);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (8, 2, 4, 'origin', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (8, 3, 9, 'origin', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (8, 4, 8, 'origin', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (8, 5, 6, 'destination', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (8, 6, 10, 'origin', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (8, 7, 10, 'destination', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (8, 8, 8, 'origin', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (8, 9, 8, 'destination', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (9, 1, 8, 'destination', 2);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (9, 2, 2, 'destination', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (9, 3, 4, 'destination', 3);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (9, 4, 3, 'destination', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (9, 5, 5, 'destination', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (9, 6, 2, 'destination', 1);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (9, 7, 8, 'origin', 4);
insert into routeStop (stopNumber, routeID, stopID, direction, timeToThisStop) values (9, 8, 7, 'destination', 5);
