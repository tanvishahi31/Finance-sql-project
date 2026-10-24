Create database banking_analysis;
use banking_analysis;
Create table Customers
(Customer_ID int auto_increment primary key,
First_name varchar(50),
Last_name varchar(50),
Gender varchar(10),
Age int,
City varchar(50),
Phone varchar(15),
Email varchar (100));
Create table Branches
(Branch_ID int,
Branch_name varchar(50),
City varchar(50));
Create table Account
(Customer_ID int auto_increment primary key,
Account_ID int,
Branch_ID int,
Account_type varchar(20),
Balance decimal(12,2),
Open_Date date);
Create table Transactions
(Transaction_ID int auto_increment primary key,
Account_ID int,
Transaction_date date,
Transaction_type varchar(20),
Amount decimal(10,2));
Insert into Customers(First_name, Last_name, Gender, Age, City, Phone, Email)
values ('Aarav','Sharma','Male',28,'Mumbai','9876543201','aarav.sharma@gmail.com'),
('Priya','Patil','Female',31,'Pune','9876543202','priya.patil@gmail.com'),
('Rohan','Mehta','Male',25,'Nashik','9876543203','rohan.mehta@gmail.com'),
('Sneha','Joshi','Female',29,'Nagpur','9876543204','sneha.joshi@gmail.com'),
('Aditya','Kulkarni','Male',34,'Navi Mumbai','9876543205','aditya.kulkarni@gmail.com'),
('Neha','Deshmukh','Female',27,'Mumbai','9876543206','neha.deshmukh@gmail.com'),
('Rahul','Verma','Male',30,'Pune','9876543207','rahul.verma@gmail.com'),
('Ananya','Iyer','Female',26,'Nashik','9876543208','ananya.iyer@gmail.com'),
('Karan','Singh','Male',35,'Nagpur','9876543209','karan.singh@gmail.com'),
('Pooja','Gupta','Female',32,'Mumbai','9876543210','pooja.gupta@gmail.com'),
('Vikram','Nair','Male',29,'Pune','9876543211','vikram.nair@gmail.com'),
('Isha','Shah','Female',24,'Navi Mumbai','9876543212','isha.shah@gmail.com'),
('Arjun','Reddy','Male',33,'Nashik','9876543213','arjun.reddy@gmail.com'),
('Meera','Bhosale','Female',28,'Nagpur','9876543214','meera.bhosale@gmail.com'),
('Siddharth','Jain','Male',36,'Mumbai','9876543215','siddharth.jain@gmail.com'),
('Kavya','Menon','Female',27,'Pune','9876543216','kavya.menon@gmail.com'),
('Harsh','Yadav','Male',31,'Nashik','9876543217','harsh.yadav@gmail.com'),
('Riya','Malhotra','Female',25,'Mumbai','9876543218','riya.malhotra@gmail.com'),
('Nikhil','Chavan','Male',29,'Nagpur','9876543219','nikhil.chavan@gmail.com'),
('Aditi','Kapoor','Female',30,'Navi Mumbai','9876543220','aditi.kapoor@gmail.com'),
('Yash','Mishra','Male',26,'Pune','9876543221','yash.mishra@gmail.com'),
('Shruti','Naik','Female',33,'Mumbai','9876543222','shruti.naik@gmail.com'),
('Manav','Pandey','Male',28,'Nashik','9876543223','manav.pandey@gmail.com'),
('Nisha','Kadam','Female',35,'Nagpur','9876543224','nisha.kadam@gmail.com'),
('Ritesh','Sawant','Male',32,'Mumbai','9876543225','ritesh.sawant@gmail.com'),
('Simran','Kaur','Female',24,'Pune','9876543226','simran.kaur@gmail.com'),
('Dev','Patel','Male',27,'Navi Mumbai','9876543227','dev.patel@gmail.com'),
('Tanisha','Roy','Female',29,'Nashik','9876543228','tanisha.roy@gmail.com'),
('Akash','Thakur','Male',34,'Nagpur','9876543229','akash.thakur@gmail.com'),
('Divya','Agarwal','Female',31,'Mumbai','9876543230','divya.agarwal@gmail.com'),
('Sameer','Bhat','Male',28,'Pune','9876543231','sameer.bhat@gmail.com'),
('Rashmi','Pillai','Female',26,'Nashik','9876543232','rashmi.pillai@gmail.com'),
('Om','Ghosh','Male',30,'Mumbai','9876543233','om.ghosh@gmail.com'),
('Sakshi','Kulshrestha','Female',27,'Nagpur','9876543234','sakshi.kulshrestha@gmail.com'),
('Abhishek','Tiwari','Male',35,'Pune','9876543235','abhishek.tiwari@gmail.com'),
('Muskan','Chopra','Female',29,'Navi Mumbai','9876543236','muskan.chopra@gmail.com'),
('Rajat','Saxena','Male',33,'Mumbai','9876543237','rajat.saxena@gmail.com'),
('Bhavna','Mohan','Female',28,'Nashik','9876543238','bhavna.mohan@gmail.com'),
('Aniket','Pawar','Male',26,'Nagpur','9876543239','aniket.pawar@gmail.com'),
('Shreya','Dixit','Female',32,'Pune','9876543240','shreya.dixit@gmail.com');
Insert into Branches (Branch_ID, Branch_name, City)
values
('101','Andheri Branch','Mumbai'),
('102','Vashi Branch','Navi Mumbai'),
('103','Shivajinagar Branch','Pune'),
('104','College Road Branch','Nashik'),
('105','Sitabuldi Branch','Nagpur');
Insert into Account
(Account_ID, Branch_ID, Account_type, Balance, Open_Date)
Values
('2001','101','Savings',45890.50,'2022-01-15'),
('2002','102','Current',125000.00,'2021-11-20'),
('2003','103','Savings',78560.75,'2023-03-12'),
('2004','104','Savings',35600.00,'2022-06-18'),
('2005','105','Current',215400.25,'2021-08-30'),
('2006','101','Savings',50230.00,'2024-01-10'),
('2007','102','Current',98000.00,'2023-07-05'),
('2008','103','Savings',67250.40,'2022-09-14'),
('2009','104','Savings',41890.00,'2021-12-01'),
('2010','105','Current',189500.00,'2023-05-21'),
('2011','101','Savings',90320.80,'2020-10-11'),
('2012','102','Savings',28750.50,'2024-02-15'),
('2013','103','Current',310450.00,'2021-03-27'),
('2014','104','Savings',76480.90,'2022-08-08'),
('2015','105','Savings',59230.00,'2023-11-17'),
('2016','101','Current',143000.00,'2021-04-19'),
('2017','102','Savings',83950.35,'2022-12-10'),
('2018','103','Savings',27000.00,'2020-06-29'),
('2019','104','Current',226780.00,'2024-03-09'),
('2020','105','Savings',68125.00,'2022-02-14'),
('2021','101','Savings',39240.00,'2023-09-18'),
('2022','102','Current',158900.00,'2021-07-23'),
('2023','103','Savings',44750.00,'2022-11-04'),
('2024','104','Current',287650.00,'2020-05-16'),
('2025','105','Savings',95580.60,'2024-04-02'),
('2026','101','Current',171340.00,'2023-01-09'),
('2027','102','Savings',63490.00,'2022-07-27'),
('2028','103','Savings',71280.20,'2021-09-13'),
('2029','104','Current',265000.00,'2020-12-07'),
('2030','105','Savings',52160.40,'2023-06-24'),
('2031','101','Savings',86340.00,'2022-10-30'),
('2032','102','Current',192500.00,'2021-01-25'),
('2033','103','Savings',34890.50,'2024-05-11'),
('2034','104','Savings',74020.00,'2023-08-03'),
('2035','105','Current',320450.75,'2022-04-28'),
('2036','101','Savings',49870.00,'2021-06-06'),
('2037','102','Current',138760.00,'2020-09-20'),
('2038','103','Savings',61980.30,'2023-10-12'),
('2039','104','Savings',81400.00,'2022-05-17'),
('2040','105','Current',245900.00,'2024-06-01');
Insert into Transactions (Transaction_ID, Account_ID, Transaction_date, Transaction_type, Amount)
values 
(3001,2001,'2026-01-05','Deposit',15000.00),
(3002,2002,'2026-01-08','Withdrawal',5000.00),
(3003,2003,'2026-01-12','Deposit',25000.00),
(3004,2004,'2026-01-15','Withdrawal',3500.00),
(3005,2005,'2026-01-18','Deposit',40000.00),
(3006,2006,'2026-01-22','Withdrawal',8000.00),
(3007,2007,'2026-01-25','Deposit',12000.00),
(3008,2008,'2026-01-28','Withdrawal',4500.00),
(3009,2009,'2026-02-02','Deposit',30000.00),
(3010,2010,'2026-02-05','Withdrawal',12000.00),
(3011,2011,'2026-02-08','Deposit',18000.00),
(3012,2012,'2026-02-10','Withdrawal',2500.00),
(3013,2013,'2026-02-14','Deposit',55000.00),
(3014,2014,'2026-02-17','Withdrawal',6000.00),
(3015,2015,'2026-02-20','Deposit',22000.00),
(3016,2016,'2026-02-24','Withdrawal',15000.00),
(3017,2017,'2026-02-27','Deposit',17500.00),
(3018,2018,'2026-03-02','Withdrawal',3000.00),
(3019,2019,'2026-03-06','Deposit',48000.00),
(3020,2020,'2026-03-10','Withdrawal',7000.00),
(3021,2021,'2026-03-13','Deposit',9500.00),
(3022,2022,'2026-03-16','Withdrawal',10000.00),
(3023,2023,'2026-03-20','Deposit',28500.00),
(3024,2024,'2026-03-24','Withdrawal',20000.00),
(3025,2025,'2026-03-27','Deposit',16000.00),
(3026,2026,'2026-04-01','Withdrawal',5500.00),
(3027,2027,'2026-04-05','Deposit',34000.00),
(3028,2028,'2026-04-08','Withdrawal',4500.00),
(3029,2029,'2026-04-12','Deposit',61000.00),
(3030,2030,'2026-04-15','Withdrawal',9000.00),
(3031,2031,'2026-04-18','Deposit',13500.00),
(3032,2032,'2026-04-22','Withdrawal',25000.00),
(3033,2033,'2026-04-25','Deposit',21000.00),
(3034,2034,'2026-04-29','Withdrawal',4000.00),
(3035,2035,'2026-05-03','Deposit',72000.00),
(3036,2036,'2026-05-06','Withdrawal',8500.00),
(3037,2037,'2026-05-10','Deposit',26500.00),
(3038,2038,'2026-05-13','Withdrawal',6000.00),
(3039,2039,'2026-05-17','Deposit',19000.00),
(3040,2040,'2026-05-20','Withdrawal',11000.00);
#Total number of customers:
select count(Customer_ID) from Customers;
#Average balance of accounts:
select avg(Balance) from Account;
#Branch wise total balance:
select Branch_ID, sum(Balance) as Total_Balance from Account group by Branch_ID;
#Monthly transaction amount:
select monthname(transaction_date) as Month,Transaction_type, sum(Amount) as Total_amount FROM Transactions
group by month(Transaction_date), monthname(Transaction_date), Transaction_type
order by month(Transaction_date);
#Top 5 account balance:
select Account_ID, Balance from Account order by Balance desc limit 5;
#Total deposits by each Branch:
select b.Branch_name, sum(t.Amount) as Total_Deposit 
from branches b inner join account a on b.Branch_ID = a.Branch_ID 
inner join transactions t on t.Account_ID = a.Account_ID where Transaction_type = "Deposit" group by Branch_name;
#Number of accounts per branch
select count(Account_ID), b.Branch_name from account a inner join branches b on a.Branch_ID = b.Branch_ID group by Branch_name;
