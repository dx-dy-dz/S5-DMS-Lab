create database Library;
use Library;

CREATE TABLE Language(Language_id int primary key, name varchar(20));
CREATE TABLE Publisher(Publisher_id int primary key, name varchar(20), address varchar(40));
CREATE TABLE Book(Book_id int primary key, Title varchar(20), Language_id int, MRP int, Publisher_id int, Published_date date, Volume int, status varchar(20), Foreign key(Language_id) references Language(Language_id), Foreign key(Publisher_id) references Publisher(Publisher_id));
CREATE TABLE Author(Author_id int primary key, Name varchar(20), email varchar(40), phone_no int, status varchar(20));
CREATE TABLE Book_Author(Book_id int, Author_id int, Foreign Key(Book_id) References Book(Book_id), Foreign Key(Author_id) references Author(Author_id), primary key(Book_id, Author_id));
CREATE TABLE Member(Member_id int primary key, Name varchar(20), Branch_code int, Roll_no int, Phone_no int, email_id varchar(40), Date_of_join date, status varchar(20));
CREATE TABLE Book_Issue(Issue_id int primary key, Date_of_Issue date, Book_id int, Member_id int, Expected_date_of_return date, status varchar(20), foreign key(Member_id) references Member(Member_id));
CREATE TABLE Book_Return(Issue_id int, Actual_date_of_return date, Late_days int, Late_fee int, Foreign key(Issue_id) references Book_Issue(Issue_id), Primary Key(Issue_id));
CREATE TABLE Late_Fee_Rule(From_days int, To_days int, Amount int, primary key(From_days, To_days, Amount));

insert into Language values(1,'English');
insert into Language values(2,'Malayalam');
insert into Language values(3,'Spanish');
insert into Language values(4,'French');
insert into Language values(5,'Hindi');
insert into Language values(6,'Arabic');
insert into Language values(7,'Urdu');
insert into Language values(8,'Tamil');
insert into Language values(9,'Kannada');
insert into Language values(10,'Telugu');

insert into Publisher values(100,'DC Books','ABC');
insert into Publisher values(101,'Wiley','DEF');
insert into Publisher values(102,'Hachette India','GHI');
insert into Publisher values(103,'Penguin Books','JKL');
insert into Publisher values(104,'Pearson','MNO');
insert into Publisher values(105,'Graywolf Press','PQR');
insert into Publisher values(106,'Eternal Editions','PQR');
insert into Publisher values(107,'Marvel Editions','STU');
insert into Publisher values(108,'Harper Collins','VWX');
insert into Publisher values(109,'Bloomsbury','VWX');

insert into Book values(1500,'Tale of two cities',1,300,101,'2000-08-12',2,'Available');
insert into Book values(1501,'Chemmeen',2,450,100,'1990-07-11',5,'Not Available');
insert into Book values(1502,'Senorita',3,500,103,'2010-09-19',1,'Available');
insert into Book values(1503,'Carpe Diem',4,250,106,'2018-10-02',6,'Available');
insert into Book values(1504,'Bonjour',4,550,102,'2015-06-01',3,'Not Available');
insert into Book values(1505,'The Secret',8,100,104,'2011-02-19',1,'Not Available');
insert into Book values(1506,'Raazi',5,800,105,'2019-01-21',2,'Available');
insert into Book values(1507,'2 States',5,600,101,'2011-06-01',1,'Available');
insert into Book values(1508,'Maafi Mushkil',6,250,103,'2006-08-03',6,'Not Available');
insert into Book values(1509,'Life',10,350,108,'2016-06-17',2,'Available');

insert into Author values(20,'Chetan Bhagat','chetan@gmail.com','9712472','Available');
insert into Author values(21,'Vallathol','Vallathol@gmail.com','9272272','Not Available');
insert into Author values(22,'Basheer','Basheer@gmail.com','9324632','Available');
insert into Author values(23,'Williams','willy@gmail.com','9436822','Not Available');
insert into Author values(24,'Dan Brown','danny@gmail.com','7028122','Not Available');
insert into Author values(25,'Ryan Gold','ryan@gmail.com','8022122','Available');
insert into Author values(26,'Kabir','kabir@gmail.com','9222122','Available');
insert into Author values(27,'Charles Dickens','charles@gmail.com','7039122','Available');
insert into Author values(28,'Muhammad Iqbal','iqbal@gmail.com','8909122','Not Available');
insert into Author values(29,'Priyanka Chopra','pcchopra@gmail.com','9038022','Not Available');
insert into Author values(30,'Jane Austen','jane@gmail.com','7092722','Available');
insert into Author values(31,'Victor Hugo','vhugo@gmail.com','8092622','Available');
insert into Author values(32,'Hazel Lancaster','hazel@gmail.com','9067622','Not Available');
insert into Author values(33,'Bin Laden','bin@gmail.com','8047622','Available');
insert into Author values(34,'Sukumara Kurupp','findmeifyoucan@gmail.com','9047622','Not Available');

insert into Book_Author values(1507,20);
insert into Book_Author values(1508,26);
insert into Book_Author values(1500,27);
insert into Book_Author values(1502,30);
insert into Book_Author values(1505,31);
insert into Book_Author values(1506,20);
insert into Book_Author values(1504,25);
insert into Book_Author values(1509,33);
insert into Book_Author values(1501,21);
insert into Book_Author values(1503,29);

insert into Member values(50,'Fathima',001,24,234769,'fathima@gmail.com','2019-08-20','Y');
insert into Member values(51,'Gowri',002,28,637718,'mungath@gmail.com','2021-06-29','Y');
insert into Member values(52,'Divya',002,22,374693,'dd@gmail.com','2018-02-18','Y');
insert into Member values(53,'Sam',003,16,324622,'sam@gmail.com','2013-01-28','N');
insert into Member values(54,'Robert',001,25,782322,'rb@gmail.com','2017-07-21','N');
insert into Member values(55,'Archana',001,21,809322,'archana@gmail.com','2010-08-22','Y');
insert into Member values(56,'Ardra',003,20,898266,'ardra@gmail.com','2017-01-12','Y');

insert into Book_Issue values(60,'2021-12-08',1502,52,'2021-12-18','Taken');
insert into Book_Issue values(61,'2021-12-05',1504,51,'2021-12-15','Taken');
insert into Book_Issue values(62,'2021-12-17',1507,50,'2021-12-27','Returned');

insert into Book_Return values(62,'2021-12-19',0,0);

insert into Late_Fee_Rule values(0,7,10);
insert into Late_Fee_Rule values(7,30,100);
insert into Late_Fee_Rule values(30,35,150);
insert into Late_Fee_Rule values(35,40,200);

