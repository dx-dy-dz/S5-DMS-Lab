# S5 CSL 333 Database Management Systems Lab

## Lab Cycle 1

Design a normalized database schema for the following requirement.
The requirement: A library wants to maintain the record of books, members, book issue, book return, and fines collected for late returns, in a database. The database can be loaded with book information. Students can register with the library to be a member. Books can be issued to students with a valid library membership. A student can keep an issued book with him/her for a maximum period of two weeks from the date of issue, beyond which a fine will be charged. Fineis calculated based on the delay in days of return. For 0-7 days: Rs 10, For 7 – 30 days: Rs 100, and for days above 30 days: Rs 10 will be charged per day. 


### Sample Database Design
1. BOOK (Book_Id, Title, Language_Id, MRP, Publisher_Id, Published_Date, Volume, Status) // Language_Id, Publisher_Id are FK (Foreign Key)
2. AUTHOR(Author_Id, Name, Email, Phone_Number, Status)
3. BOOK_AUTHOR(Book_Id, Author_Id) // many-to-many relationship, both columns are PKFK (Primary Key and Foreign Key)
4. PUBLISHER(Publisher_id, Name, Address)
5. MEMBER(Member_Id, Name, Branch_Code, Roll_Number, Phone_Number, Email_Id, Date_of_Join, Status)
6. BOOK_ISSUE(Issue_Id, Date_Of_Issue, Book_Id, Member_Id, Expected_Date_Of_Return, Status) // Book+Id and Member_Id are FKs
7. BOOK_RETURN(Issue_Id, Actual_Date_Of_Return, LateDays, LateFee) // Issue_Id is PK andFK
8. LANGUAGE(Language_id, Name) //Static Table for storing permanent data
9. LATE_FEE_RULE(FromDays, ToDays, Amount) // Composite Key

## EXERCISES
1. Create a normalized database design with proper tables, columns, column types, and constraints
2. Write SQL commands to
  * a. Create a database by name Library. Drop the database and re-create it.
  * b. Create DDL statements and create the tables and constraints (from the design) in the database created in step-a (Library)
  * c. Create and execute DROP TABLE command in tables with and without FOREIGN KEY constraints.
  * d. Create and execute ALTER TABLE command in tables with data and without data.
  * e. Create and execute SQL commands to build indices on Member_Id and Book_Id on table Book_Issue.
  * f. Create and execute GRANT/REVOKE commands on tables.
  * g. Create and execute SQL commands to insert data into each of the tables designed
  * h. Learn and execute bulk import of data to tables from CSV files (insert 1000 records of books into the BOOK table from a CSV file).
  * i. Create and execute UPDATE/DELETE commands on tables. Try to update/delete rows with Primary and Foreign Keys. Try bulk updates or deletes using SQL UPDATE statement

