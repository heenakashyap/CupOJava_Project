DROP TABLE IF EXISTS transitUsers;

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


insert into transitUsers (username, password, firstName, lastName, address, city, phoneNo, email, dob) VALUES
('whatUsername','thisIsMyPassword','heena','kashyap','scott road', 'vancouver', '7783443334', 'test@gmail.com','2020-10-10'),
('JohnIsFire','john618811','adam','McCallum','scott road', 'vancouver', '7783443334', 'test@gmail.com','2020-10-10'),
('MrAwesome','250geoleo','Peter','ozan','scott road', 'vancouver', '7783443334', 'test@gmail.com','2020-10-10');

