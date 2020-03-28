-- Dajun Lin , Shangchen Li
create database MyLibrary;
use MyLibrary;

create table student 
(
ID_student int not null, 
lastname varchar(30) not null,
firstname varchar(30) not null,
address varchar(70),
city varchar(30),
state varchar(30),
zipcode varchar(10),
phonenumber varchar(20),
primary key (ID_student)
);

insert into student values 
(10001,'Smith','James','3200 Tree St','Philadelphia','PA','19115','2153518564'),
(10002,'Johnson','John','17 North St','Philadelphia','PA','19116','2158561253'),
(10003,'Williams','David','288 1st St','Philadelphia','PA','19107','2155523886'),
(10004,'Jones','Thomas','992 4th St','Philadelphia','PA','19123','2674561235'),
(10005,'Brown','Paul','212 Crow Ave','Philadelphia','PA','19115','2678123561');

create table book 
(
ID_book int not null, 
author varchar(30) not null,
title varchar(80) not null,
ISBN varchar(20) not null,
publisher varchar(30) not null,
book_type varchar(30) not null,
primary key (ID_book)
);

insert into book values 
(10000001,'John Joy','Linux Pocket Guide','756-1234567890','Ken Books','Computer'),
(10000002,'Michael Green','The New Life','756-1625567891','North Books','Novella'),
(10000003,'David Barrett','Cheers to the Publican','123-1234567012','South Books','Cookbook'),
(10000004,'Jim Nguyen','Living','321-1233422819','Ward Books','Novella'),
(10000005,'Kelly Smith','MySql Guide' ,'222-1232434256','RIT Books','Computer');

create table inventory 
(
ID_inventory int not null, 
ID_book int not null, 
location varchar(4) not null,
quantity int,
FOREIGN KEY (ID_book) REFERENCES book(ID_book),
primary key (ID_inventory)
);

insert into inventory values 
(11000000,10000001,'A1',3),
(12000000,10000002,'C4',2),
(13000000,10000003,'B3',1),
(14000000,10000004,'C4',2),
(15000000,10000005,'A1',4);

create table rental_main 
(
ID_rental_main int not null, 
ID_student int not null, 
operator varchar(30) not null,
date_build Date,
book_total_quantity int not null,
FOREIGN KEY (ID_student) REFERENCES student(ID_student),
primary key (ID_rental_main)
);

insert into rental_main values 
(10000001,10001,'Ken','2019-11-25',1),
(20000002,10002,'Ken','2019-8-10',1),
(30000003,10003,'Ken','2019-7-10',1),
(40000004,10004,'Alan','2019-12-3',1),
(50000005,10005,'Alan','2019-10-10',2);


create table rental_detail 
(
ID_detail int not null, 
ID_rental_main int not null, 
ID_student int not null, 
ID_book int not null, 
date_rental Date,
date_return Date,
FOREIGN KEY (ID_rental_main) REFERENCES rental_main(ID_rental_main),
FOREIGN KEY (ID_student) REFERENCES student(ID_student),
FOREIGN KEY (ID_book) REFERENCES book(ID_book),
primary key (ID_detail)
);

insert into rental_detail values
(10000001,10000001,10001,10000001,'2019-11-25',null),
(10000002,20000002,10002,10000002,'2019-8-10','2019-9-3'),
(10000003,30000003,10003,10000003,'2019-7-10','2019-8-10'),
(10000004,40000004,10004,10000004,'2019-12-3',null),
(10000005,50000005,10005,10000005,'2019-10-10',null),
(10000006,50000005,10005,10000003,'2019-10-10',null);


--
select  date_build,lastname, firstname, book_total_quantity from rental_main left join student on student.ID_student=rental_main.ID_student where book_total_quantity>1;

--  
select title, author,ISBN,publisher, book_type, location,quantity from inventory left join book on inventory.ID_book=book.ID_book where title like '%N%';

-- 
select title, author, location,quantity from inventory left join book on inventory.ID_book=book.ID_book where book_type='Computer';

--  
select lastname, firstname, date_rental,date_return,title,author from rental_detail left join book on rental_detail.ID_book=book.ID_book left join student on student.ID_student=rental_detail.ID_student order by lastname; 

--
select title, author,ISBN, location,quantity from inventory left join book on inventory.ID_book=book.ID_book where author like  '%David%' and quantity>0;



