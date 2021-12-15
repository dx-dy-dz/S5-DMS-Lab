// a. Create a database by name Library. Drop the database and re-create it.
CREATE database Library;
use myLibrary;
DROP Library;
CREATE database Library;

// d. Create and execute ALTER TABLE command in tables with data and without data.
// To change the name of table
ALTER table Book RENAME Books;

// To change the column name
ALTER table Language CHANGE  Language_id Language_ID int(11);

// To add a new column 
alter table Language add region varchar(20);

// To drop a column
alter table Language drop region;
