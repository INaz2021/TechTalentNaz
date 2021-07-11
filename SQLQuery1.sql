1--Create table customer
Create table customer
(c_id int identity(1,1) primary key,
c_firstname varchar(250) not null,
c_lastname varchar(250) not null,
c_address varchar(250) not null,
c_phone varchar(250) not null)

--Insert Records
Insert into customer values ('John','Lewis','Birmingham',079821723654);
Insert into customer values ('Zak','Harry','London',07123456781);
Insert into customer values ('Oliver','George','Manchester',07653427862);
Insert into customer values ('Leo','Arthur','Leicester',07871234578);
Insert into customer values ('Olivia','Noah','Liverpool',07873562013);
Insert into customer values ('Jack','Oscar','Bristol',07812343215);

--Display Table
select * from customer;

--Update record
Update customer set c_phone = 07237615243 where c_id = 1;

--Delete record
Delete from customer where c_id = 6;

--display one column of table
select c_id from customer;

--Comparison operator
select * from customer where c_id <= 3;

------------------------------

2--Create table orders
Create table orders(
order_id int identity(1,1) primary key,
order_date datetime,
order_quantity int not null,
total int not null,
payement_method varchar(250),
cid int foreign key references customer(c_id))

---Insert Records
Insert into orders values('2020-12-23', 2, 20,'card', 1);
Insert into orders values('2021-01-09', 3, 30,'card', 2);
Insert into orders values('2020-09-13', 1, 10,'cash', 5);
Insert into orders values('2020-12-23', 4, 40,'card', 3);
Insert into orders values('2021-04-02', 2, 20,'cash', 6);
Insert into orders values('2021-03-27', 6, 60,'card', 1);
Insert into orders values('2021-01-17', 1, 10,'card', 4);
Insert into orders values('2021-02-24', 20, 200,'cash', 4);
Insert into orders values('2020-08-25', 5, 50,'card', 2);
Insert into orders values('2020-11-01', 7, 70,'cash', 5);

--Display Table
select * from orders;

--Dislpay two column of a table
select order_id,cid from orders;

--Comparison operator
Select * from orders where total >= 10 and total <= 40;

--Alter Data Type of table Orders
Alter table orders alter column total money;

----------------------------------------

3--Join tables
select * from customer c inner join orders o on c.c_id = o.cid;

select * from customer c inner join orders o on c.c_id = o.cid where payement_method = 'cash';

4--Sorted by order
Select * from customer c full join orders o on c.c_id = o.cid order by c_id asc;

Select * from customer c full join orders o on c.c_id = o.cid order by c_address desc;
