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


insert into Publisher values(102,'Gowri Books','GHI');


insert into Publisher values(103,'Divya Books','JKL');


insert into Publisher values(104,'Fathima Books','MNO');


insert into Publisher values(105,'Athul Books','PQR');


insert into Publisher values(106,'Eternal Editions','PQR');


insert into Publisher values(107,'Marvel Editions','STU');


insert into Publisher values(108,'Balarama Editions','VWX');


insert into Publisher values(109,'Manorama Editions','VWX');
