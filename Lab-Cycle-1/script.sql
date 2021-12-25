create database MyLibrary;
use MyLibrary;
go

drop table if exists Book;
drop table if exists Author;
drop table if exists Book_Author;
drop table if exists Member;
drop table if exists Book_Issue;
drop table if exists Book_Return;
drop table if exists Late_Fee_Rule;
drop table if exists Language;
drop table if exists Publisher;

CREATE TABLE Language(Language_id int primary key, name varchar(20));
CREATE TABLE Publisher(Publisher_id int primary key, name varchar(20), address varchar(40));
CREATE TABLE Book(Book_id int primary key, Title varchar(20), Language_id int, MRP int, Publisher_id int, Published_date date, Volume int, status varchar(20), Foreign key(Language_id) references Language(Language_id), Foreign key(Publisher_id) references Publisher(Publisher_id));
CREATE TABLE Author(Author_id int primary key, Name varchar(20), email varchar(40), phone_no int, status varchar(20));
CREATE TABLE Book_Author(Book_id int, Author_id int, Foreign Key(Book_id) References Book(Book_id), Foreign Key(Author_id) references Author(Author_id), primary key(Book_id, Author_id));
CREATE TABLE Member(Member_id int primary key, Name varchar(20), Branch_code int, Roll_no int, Phone_no int, email_id varchar(40), Date_of_join date, status varchar(20));
CREATE TABLE Book_Issue(Issue_id int primary key, Date_of_Issue date, Book_id int, Member_id int, Expected_date_of_return date, status varchar(20), foreign key(Member_id) references Member(Member_id));
CREATE TABLE Book_Return(Issue_id int, Actual_date_of_return date, Late_days int, Late_fee int, Foreign key(Issue_id) references Book_Issue(Issue_id), Primary Key(Issue_id));
CREATE TABLE Late_Fee_Rule(From_days int, To_days int, Amount int, primary key(From_days, To_days, Amount));

// To run: source path/filename.sql
