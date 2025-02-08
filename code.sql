create table Department ( 
    Dept_Id Char (5) , 
    Dept_name varchar (50) Not Null , 
    Dept_phone Char (10) Not Null, 
    Dept_email varchar (50) Unique Not Null check (Dept_email like '%@%'), 
         
     constraint PK_Department primary key (Dept_Id) 
 
 
);

create table Services_ ( 
    Dept_Id Char (5) ,  
    Product varchar (50) Not Null , 
     constraint PK_Services_ primary key (Dept_Id) ,
     FOREIGN KEY(Dept_id) REFERENCES Department(Dept_id) on delete cascade
 
);

create table Users_( 
    Username varchar (15) , 
    Pass_word varchar (18) Unique  Not Null, 
    
     constraint PK_Users_ primary key (Username) 
);

CREATE TABLE Employees ( 
Emp_Id CHAR(6) , 
NAME_EMP  VARCHAR(50) Unique Not Null, 
Balance DECIMAL(9,2) Not Null, 
Dept_id char(5) Not Null, 
Pho_Num CHAR(10) Unique Not Null, 
Email VARCHAR(50)Unique Not Null check (Email like '%@%'), 
Username varchar (15) Unique Not Null , 
 
    constraint PK_Employees primary key (Emp_Id), 
    FOREIGN KEY(Username) REFERENCES Users_(Username) on delete cascade, 
    FOREIGN KEY(Dept_id) REFERENCES Department(Dept_id)  on delete cascade
 
);

CREATE TABLE Customers( 
 Cust_Id Char (24) , 
 Name_CUS VARCHAR(50) NOT NULL, 
 City VARCHAR(20), 
 Pho_Num CHAR(10)Unique NOT NULL, 
 Email VARCHAR(50)Unique Not Null check (Email like '%@%'), 
 Username varchar (15) Unique Not Null , 
 
     constraint PK_Customers primary key (Cust_Id), 
     FOREIGN KEY(Username) REFERENCES Users_(Username)  on delete cascade
 
   
);

CREATE TABLE Account_ ( 
Acc_Num CHAR(12), 
Cust_Id CHAR(24) , 
Acc_Name varchar(30) Not Null, 
Acc_Type varchar(20) Not Null, 
Acc_balnace DECIMAL(13,3)Not Null, 
Date_ Date Not Null, 
Dept_id Char (5) not null, 
 
    constraint PK_Account_ primary key (Acc_Num), 
    FOREIGN KEY(Cust_Id) REFERENCES Customers(Cust_Id)  on delete cascade, 
    FOREIGN KEY(Dept_id) REFERENCES Department(Dept_id)  on delete cascade
);

create table Transactions ( 
    Tra_Id Char (13), 
    Acc_Num Char (12), 
    Amount decimal (13,3) Not Null , 
    Acc_balnace decimal (13,3) Not Null , 
    Tra_type varchar (30) Not Null , 
    Date_ Date, 
 
     constraint PK_Transaction primary key (Tra_Id), 
     FOREIGN KEY(Acc_Num) REFERENCES Account_(Acc_Num)  on delete cascade
);

insert into Department (Dept_Id,Dept_name,Dept_phone,Dept_email) 
values ('DE194','Management department','0165343527', 'mang@gmail.com');

insert into Department (Dept_Id,Dept_name,Dept_phone,Dept_email) 
values ('DE291', 'Cards department', '0163418396', 'Card@gmail.com');

insert into Department (Dept_Id,Dept_name,Dept_phone,Dept_email) 
values ('DE936', 'Mortgages / advances' ,'0169283992' ,'Mortgages@gmailcom');

insert into Department (Dept_Id,Dept_name,Dept_phone,Dept_email) 
values ('DE527', 'Customer service', '0162844939', 'customer@gmail.com');

insert into Department (Dept_Id,Dept_name,Dept_phone,Dept_email) 
values ('DE472', 'Back office', '0162839229', 'BackOff@gmail.com');

select * from Department;

insert into Services_ (Dept_Id , Product)  
values ('DE194','Mange all details');

insert into Services_ (Dept_Id , Product)  
values ('DE291', 'Offer the cadres / open the base account "SAVING"');

insert into Services_ (Dept_Id , Product)  
values ('DE936', 'Offer the Mortgages and credit accounts');

insert into Services_ (Dept_Id , Product)  
values ('DE527','Helping the customer and receive complaints');

insert into Services_ (Dept_Id , Product)  
values ('DE472','IT /accounting finance/planning');

select * from Services_ ;

INSERT INTO Users_ (Username , Pass_word  ) 
VALUES ('@SaAliD', 'SaAliD65&76*');

INSERT INTO Users_ (Username , Pass_word  ) 
VALUES ('@OT_Fahd', 'OT_Fahd5274^655');

INSERT INTO Users_ (Username , Pass_word  ) 
VALUES ('@Fhaiin_5656' ,'Fhaiin_565Hin');

INSERT INTO Users_ (Username , Pass_word ) 
VALUES ('@Sar1232Sar' ,'Sar1232Sar');

INSERT INTO Users_ (Username , Pass_word  ) 
VALUES ('@J00Di17', 'J00Di17*545fg');

INSERT INTO Users_ (Username , Pass_word  ) 
VALUES ('@SalEnzi656', 'SalEnzi656');

INSERT INTO Users_ (Username , Pass_word  ) 
VALUES ('@164NajOoa' ,'164NajOoa&65');

INSERT INTO Users_ (Username , Pass_word  ) 
VALUES ('@M007ah3', 'M007ah32$iii');

INSERT INTO Users_ (Username , Pass_word) 
VALUES ('@SaeedSaeed' ,'SaeedSaeed&46452');

INSERT INTO Users_ (Username , Pass_word ) 
VALUES ('@ali_Hammo0d', 'ali_Hammo0d@19762' );

INSERT INTO Users_ (Username , Pass_word  ) 
VALUES ('@Kholoud44', 'Kholoud44');

INSERT INTO Users_ (Username , Pass_word ) 
VALUES ('@GhaidaSaad' ,'GhaidaSaad' );

INSERT INTO Users_ (Username , Pass_word) 
VALUES ('@JumanaFahd', 'JumanaFahd');

INSERT INTO Users_ (Username , Pass_word ) 
VALUES ('@SalemAl-Dosari', 'SalemAl-Dosari');

INSERT INTO Users_ (Username , Pass_word ) 
VALUES ('@HourMuhammad', 'HourMuhammad');

INSERT INTO Users_ (Username , Pass_word ) 
VALUES ('@YahyaSalem', 'YahyaSalem');

INSERT INTO Users_ (Username , Pass_word ) 
VALUES ('@OmarAlMutairil', 'OmarAlMutairil');

INSERT INTO Users_ (Username , Pass_word) 
VALUES ('@YazidAl-Otaibi', 'YazidAl-Otaibi');

INSERT INTO Users_ (Username , Pass_word  ) 
VALUES ('@KhalidAl-Harbi', 'KhalidAl-Harbi');

INSERT INTO Users_ (Username , Pass_word ) 
VALUES ('@OssamaAl-Alil', 'OssamaAl-Alil');

select * from users_;

insert into Employees (Emp_id , Name_Emp , balance , Dept_id , pho_num , email , username )  
VALUES ('E34517' , 'Kholoud Al-Shammari',20000.00, 'DE194','0500198887','Kholoud_ 44@gmail.com','@Kholoud44');

insert into Employees (Emp_id , Name_Emp , balance , Dept_id , pho_num , email , username )  
VALUES ('E51839' , 'Ghaida Saad',15000.00, 'DE194','0501339055','Ghaida_Saad@gmail.com','@GhaidaSaad');

insert into Employees (Emp_id , Name_Emp , balance , Dept_id , pho_num , email , username )  
VALUES ('E02847' , 'Jumana Fahd',10000.00, 'DE472','0537560777','Jumana_Fahd@hotmail.com','@JumanaFahd');

insert into Employees (Emp_id , Name_Emp , balance , Dept_id , pho_num , email , username )  
VALUES ('E13230' , 'Salem Al-Dosari',9000.00, 'DE472','0568476246','Salem_Al-Dosari@outlook.sa','@SalemAl-Dosari');

insert into Employees (Emp_id , Name_Emp , balance , Dept_id , pho_num , email , username )  
VALUES ('E52849' , 'Hour Muhammad',8000.00, 'DE527','0576420089','Hour_Muhammad@gmail.com','@HourMuhammad');

insert into Employees (Emp_id , Name_Emp , balance , Dept_id , pho_num , email , username)  
VALUES ('E36306' , 'Yahya Salem',8000.00, 'DE291','0565993700','Yahya_Salem@hotmail.com','@YahyaSalem');

insert into Employees (Emp_id , Name_Emp , balance , Dept_id , pho_num , email , username )  
VALUES ('E10198' , 'Omar Al-Mutairi',8000.00, 'DE936','0557896427','OmarAl-Mutairil@gmail.com','@OmarAlMutairil');

insert into Employees (Emp_id , Name_Emp , balance , Dept_id , pho_num , email , username )  
VALUES ('E65810' , 'Yazid Al-Otaibi',8000.00, 'DE936','0567543489','Yazid_Al-Otaibi@gmail.com','@YazidAl-Otaibi');

insert into Employees (Emp_id , Name_Emp , balance , Dept_id , pho_num , email , username )  
VALUES ('E17352' , 'Khalid Al-Harbi',8000.00, 'DE527','0539096558','Khalid_Al-Harbi@outlook.sa','@KhalidAl-Harbi');

insert into Employees (Emp_id , Name_Emp , balance , Dept_id , pho_num , email , username )  
VALUES ('E45172' , 'Ossama Al-Ali',8000.00, 'DE291','0532894678','OssamaAl-Alil@ outlook.sa','@OssamaAl-Alil');

select * from Employees;

insert into Customers (Cust_id, Name_Cus,city, Pho_Num , email,username )  
VALUES ('SA8765000923221456343268' , 'Saad Al-Ali', 'Onaizah','0501379654','Saad Al- Alil@gmail.com','@SaAliD');

insert into Customers (Cust_id, Name_Cus,city, Pho_Num , email,username )  
VALUES ('SA3254654800002326787650' , 'FahdAl-Otaibi', 'Buraidah','0537760876','Fahd Al-Otaibi@hotmail.com','@OT_Fahd');

insert into Customers (Cust_id, Name_Cus,city, Pho_Num , email,username )  
VALUES ('SA1323245467770990000212' , 'Hind Al-Faisal', 'Bukayriyah','0500099876','HindAl-Faisal@gmail.com','@Fhaiin_5656');

insert into Customers (Cust_id, Name_Cus,city, Pho_Num , email,username )  
VALUES ('SA7676545438982136456000' , 'Sarah Al-Otaibi', 'Alrass','0576489245','SarahAl-Otaibil@outlook.sa','@Sar1232Sar');

insert into Customers (Cust_id, Name_Cus,city, Pho_Num , email,username )  
VALUES ('SA0000234335368323893633' , 'Jude Al-Enezi', 'Onaizah','0576428900','JudeAl-Enezi@gmail.com','@J00Di17');

insert into Customers (Cust_id, Name_Cus,city, Pho_Num , email,username )  
VALUES ('SA0873547385925484624105' , 'Salman Al-Enezii', 'Buraidah','0565379900','SalmanAl-Enezil@hotmail.com','@SalEnzi656');

insert into Customers (Cust_id, Name_Cus,city, Pho_Num , email,username )  
VALUES ('SA1227402019490111027777' , 'Najwa Al-Mutairi', 'Bukayriyah','0557427896','NajwaAl-Mutairil@gmail.com','@164NajOoa');

insert into Customers (Cust_id, Name_Cus,city, Pho_Num , email,username )  
VALUES ('SA9890346770002376541893' , 'Mohammed Al-Mutairi', 'Onaizah','0564897543','MohammedAl-Mutairil@gmail.com','@M007ah3');

insert into Customers (Cust_id, Name_Cus,city, Pho_Num , email,username )  
VALUES ('SA8133335046578237658000' , 'Saeed Al-Shehrii', 'Albada^a','0576558909','SaeedAl-Shehril@outlook.sa','@SaeedSaeed');

insert into Customers (Cust_id, Name_Cus,city, Pho_Num , email,username )  
VALUES ('SA2956274927364700043111' , 'HammoudAl-Ali', 'Albada^a','0546783289','HammoudAl-Alil@outlook.sa','@ali_Hammo0d');
select * from Customers;

INSERT INTO Account_ (Acc_Num , cust_id , Acc_name , acc_type , Acc_balnace , date_ , Dept_id) 
VALUES ('221456343268' , 'SA8765000923221456343268','Saad', 'Credit',1500000.00, '23-Mar-2015','DE936');

INSERT INTO Account_ (Acc_Num , cust_id , Acc_name , acc_type , Acc_balnace , date_ , Dept_id) 
VALUES ('772326787650' , 'SA3254654800002326787650','Fahad', 'Saving',134000.00,'16-Aug-2017','DE291');

INSERT INTO Account_ (Acc_Num , cust_id , Acc_name , acc_type , Acc_balnace , date_ , Dept_id) 
VALUES ('770990000212' , 'SA1323245467770990000212','Hind Faisal', 'Credit',10000.00,'1-Oct-2021','DE936');

INSERT INTO Account_ (Acc_Num , cust_id , Acc_name , acc_type , Acc_balnace , date_ , Dept_id) 
VALUES ('982136456000' , 'SA7676545438982136456000','Alotaibi_Sarah', 'Credit',2000000.00,'12-May-2022','DE936');

INSERT INTO Account_ (Acc_Num , cust_id , Acc_name , acc_type , Acc_balnace , date_ , Dept_id) 
VALUES ('368323893633' , 'SA0000234335368323893633','Jude', 'Credit',170500.50,'14-May-2019','DE936');

INSERT INTO Account_ (Acc_Num , cust_id , Acc_name , acc_type , Acc_balnace , date_ , Dept_id) 
VALUES ('925484624105' , 'SA0873547385925484624105','Salman Al-Enezi', 'Saving',6000.00,'14-Apr-2020','DE291');

INSERT INTO Account_ (Acc_Num , cust_id , Acc_name , acc_type , Acc_balnace , date_ , Dept_id) 
VALUES ('490111027777' , 'SA1227402019490111027777','Najwa', 'Saving',1000.00,'1-Jan-2023','DE291');

INSERT INTO Account_ (Acc_Num , cust_id , Acc_name , acc_type , Acc_balnace , date_ , Dept_id) 
VALUES ('612376541893' , 'SA9890346770002376541893','Moh_Mutairi', 'Credit',500000.25,'30-Nov-2018','DE936');

INSERT INTO Account_ (Acc_Num , cust_id , Acc_name , acc_type , Acc_balnace , date_ , Dept_id) 
VALUES ('578237658000' , 'SA8133335046578237658000','Saeed Al-Shehri', 'Saving',120000.00,'19-Oct-2019','DE291');

INSERT INTO Account_ (Acc_Num , cust_id , Acc_name , acc_type , Acc_balnace , date_ , Dept_id) 
VALUES ('364700043111' , 'SA2956274927364700043111','Hammoud', 'Saving',50000.00,'21-Dec-2019','DE291');

select * from Account_ ;

insert into Transactions (Tra_id , Acc_Num , Amount , Acc_balnace , Tra_type , Date_ ) 
values ('16482738822/7', '221456343268', -5000.34 ,1494999.66 ,'POS Purchase', '19-Oct-2022');

insert into Transactions (Tra_id , Acc_Num , Amount , Acc_balnace , Tra_type , Date_ ) 
values ('11740002462/6', '772326787650' , +1000000 ,  144000.00 , 'Incoming Transfer', '1-Jan-2023');

insert into Transactions (Tra_id , Acc_Num , Amount , Acc_balnace , Tra_type , Date_ ) 
values ('21546254828/6', '982136456000', -154000.00 ,1846000.00 ,'Outgoing Transfer', '24-Jul-2022');

insert into Transactions (Tra_id , Acc_Num , Amount , Acc_balnace , Tra_type , Date_ ) 
values ('81947254927/7', '612376541893', +154000.00 , 654000.25 , 'Incoming Transfer' ,'24-Jul-2022');

insert into Transactions (Tra_id , Acc_Num , Amount , Acc_balnace , Tra_type , Date_ ) 
values ('27462548264/8', '578237658000', -70000.00  , 50000.00 ,'POS Purchase' , '18-Dec-2022');

select * from Transactions ;



select * from Department ;

select * from Services_ ;

select * from Users_ ;

select * from Employees ;

select * from Customers ;

select * from Account_ ;

select * from Transactions ;



select Name_CUS,Acc_Num,Date_
from Customers natural join Account_
order by Name_CUS;

select count (distinct Name_Cus) NumbersOfCustomers ,city
from Customers
group by city;

select Name_CUS NameOfLowestBalance,Acc_balnace Balnace
from Customers c natural join Account_ a
where a.Acc_balnace <=(select min(Acc_balnace)
                      from Account_);

update Customers
set city ='Alrass'
where city='Onaizah' and Name_Cus='Jude Al-Enezi';



update Customers
set Pho_Num='0567778991'
where Name_Cus='Mohammed Al-Mutairi'


delete from account_
where cust_id='SA2956274927364700043111'; -- to delete from customers table down....

delete
from Customers 
where cust_id='SA2956274927364700043111';-- now we can delete !

select Dept_name, avg(Balance) Avrage_balance
from Employees natural join Department
group by Dept_name;



select Dept_name,count(Emp_id) NumOfEmployees
from Employees natural join Department
group by Dept_name;

select Name_Emp Name,Balance
from Employees 
where Balance =(select Max(Balance) 
                  from Employees);

update Employees
set Balance=Balance*1.05
where Emp_id='E52849';

select * from Employees

update Employees
set Dept_id ='DE194'
where Emp_id='E10198';

delete 
from Employees
where Emp_id in(select Emp_id
from Department
where Dept_name='Cards department' and Employees.Name_Emp='Ossama Al-Ali');


select pass_word
from Users_ 
where Username='@Fhaiin_5656';

select count(Username) AllUsers
from Users_;

update Users_
set pass_word='AlEnzi**656' 
where Username='@SalEnzi656';

create table temp as
select * from Employees where Username = '@JumanaFahd'
select * from temp
delete from Employees
where Username = '@JumanaFahd' ;


update Users_
set Username='@Jumana178' 
where Username='@JumanaFahd';

insert into Employees (EMP_ID ,NAME_EMP	, BALANCE, DEPT_ID, PHO_NUM , EMAIL, USERNAME)
values ('E02847',	'Jumana Fahd',	10000	,'DE472',	'0537560777',	'Jumana_Fahd@hotmail.com',	'@Jumana178')


delete
from Users_
where Username='@OssamaAl-Alil'; -- i edit this query because we deleted the first employy so we should delete what we deleted befor 

select * from Employees
select * from users_
