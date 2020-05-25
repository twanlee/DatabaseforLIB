create database lib;
use lib;
create table Catagory (
catalog_id int not null auto_increment primary key,
cata_name varchar(255) not null);
create table Books (
book_id int not null auto_increment primary key,
book_name varchar(255),
book_cataId int,
foreign key (book_cataId) references Catagory(catalog_id));
create table Students(
student_id int not null auto_increment primary key,
student_firstName varchar(255),
student_lastName varchar(255),
browed_bookId int,
foreign key (browed_bookId) references Books(book_id));
create table Manager(
book_id int not null,
student_id int not null,
status varchar(255),
foreign key (book_id) references Books(book_id),
foreign key (student_id) references Students(student_id));
