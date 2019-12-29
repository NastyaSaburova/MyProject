/* Создание таблицы Persons */
CREATE TABLE Persons (
    PersonID int, /* int - целые числа */
    LastName varchar(255),  /* varchar - числа, буквы, символы */
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

/* Создание таблицы Product */
CREATE TABLE Product (
    maker varchar(10) NOT NULL, /* int - целые числа */
	model varchar(50) NOT NULL,
	type varchar(50) NOT NULL,
	PRIMARY KEY (model)
);

/* Создание таблицы PC */
CREATE TABLE PC (
	code int not null,
	model varchar(50) references Product(model) not null,
	speed smallint not null,
	ram smallint not null,
	hd real not null,
	cd varchar(10) not null,
	price money null,
	PRIMARY KEY (code)
);

/* Создание таблицы Laptop */
CREATE TABLE Laptop (
	code int not null,
	model varchar(50) references Product(model) not null,
	speed smallint not null,
	ram smallint not null,
	hd real not null,
	screen tinyint not null,
	price money null,
	PRIMARY KEY (code)
);

/* Создание таблицы Printer */
CREATE TABLE Printer (
	code int not null,
	model varchar(50) references Product(model) not null,
	type varchar(10) not null,
	color char(10) not null,
	price money null,
	PRIMARY KEY (code)
);