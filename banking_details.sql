create database banking_details ;

----customer table
create table customer (cust_id int primary key,first_name varchar(20)
not null ,last_name varchar(20) not null ,contact int unique,address varchar(20),
username varchar(10)unique,password varchar(10)unique);

----transactions table 
create table transactions(transactional_id int primary key,employee_id int 
foreign key references employees (employee_id),cust_id int foreign key references 
customer(cust_id),name varchar(20));

----employees table 
create table employees (employee_id int primary key ,first_name varchar(20) not null,
last_name varchar(20) not null ,contact int ,address varchar(20),
username varchar(20),password varchar(20));

---logs table 
create table logs (logs_id int primary key,transactional_id int foreign key 
references transactions (transactional_id),logindate datetime,logintime datetime);

----reports table
create table reports (report_id int primary key,account_id int 
foreign key references accounts(account_id),logs_id int foreign key references 
logs(logs_id),transactional_id int foreign key references transactions
(transactional_id),report_name varchar(20),report_date datetime)

----accounts  table
create table accounts (account_id int primary key,cust_id int foreign key
references customer(cust_id),account_name varchar(20));

select * from customer