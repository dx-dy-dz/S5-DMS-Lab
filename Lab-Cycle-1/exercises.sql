// a. Create a database by name Library. Drop the database and re-create it.
CREATE database Library;
use myLibrary;
DROP Library;
CREATE database Library;

// d. Create and execute ALTER TABLE command in tables with data and without data.
// To change the name of table
ALTER TABLE Book RENAME Books;

// To change the column name
ALTER TABLE Language CHANGE  Language_id Language_ID int(11);

// To add a new column 
ALTER TABLE Language ADD region varchar(20);

// To drop a column
ALTER TABLE Language DROP region;

// e. Create and execute SQL commands to build indices on Member_Id and Book_Id on table Book_Issue.
CREATE index firstindex on Book_Issue(Member_Id);
CREATE index secondindex on Book_Issue(Book_Id);
SHOW indexes from Book_Issue;

// f. Create and execute GRANT/REVOKE commands on tables.
create user 'myuser'@'%' identified by 'password';
GRANT SELECT on Book to myuser;
GRANT SELECT,ALTER on Book to myuser;
show grants;
REVOKE SELECT on Book from myuser;
GRANT SELECT,ALTER on Book to myuser;
