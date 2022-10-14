----Assi-4---
--SOLved QUERIES---
----order2 table--;
Create table order2(order_id int,supplier_name char(20),price int,shiping_name char(20));
---inserting records---
insert into order2 values(1,'Exotic',1000,'rd pvt');
---queries----
select price,shiping_name from order2 where price>50 and supplier_name='Exotic';  

-----------Employee table ---------------
Create table Employee1(e_id int primary key,e_name text,e_city text);
Insert into Employee1 values(1,'rutuja','satana');
Insert into Employee1 values(2,'om','nashik');
Insert into Employee1 values(3,'akshay','nashik');
Insert into Employee1 values(4,'avni','devlali');

--queries---
select * from Employee1 where e_id=1;

select * from Employee1 ORDER BY e_id DESC;

----------product table -----------------
Create table Product(p_id int primary key, p_name text,unitprice int,stock int,unitorder int);
Insert into product values(1,'JKA4',250,15,30);
Insert into product values(2,'b2b',300,20,20);
Insert into product values(3,'laptop',60000,1,10);
Insert into product values(4,'charger',2000,0,20);

----queries---
select * from product;
select * from product where unitprice=(select MIN(unitprice) from product);
select * from product where unitprice=(select MAX(unitprice) from product);

select * from product where stock=0;

select * from product where stock<unitorder;

----------category table ----------------
Create table category(c_id int primary key, c_name text);
insert into category values(1,'eletric');
insert into category values(2,'paper');	
---queriess--
select* from category ;


--------Company table ------------
Create table company (c_id int primary key , c_name text); 
Insert into company values (1,'riya enterprises');
Insert into company values (2,'omkar pvt ltd');

----queries---
SELECT c_name, SUBSTRING(c_name,1,5)
FROM company;

---------customer table ------------------
Create table customer (ct_id int primary key, ct_name text);
Insert into customer values(1,'akshay');
Insert into customer values(2,'Rahul');
----queries----
select * from customer
select c_id from customer where c_name LIKE 'Ra%';














SELECT c_name, SUBSTRING(c_name,1,1)
FROM company;


select c_name from company where c_name LIKE ' %'