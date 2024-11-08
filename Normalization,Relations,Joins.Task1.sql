create database TaskDB
use TaskDB

create table Users(
Id int primary key identity,
Username nvarchar(20) not null,
[Password] nvarchar(30) not null
)

insert into Users
values('Xeyyam','Verdiyev21'),
('Efqan','Efqan@123'),
('Elnara','Elnara321')

select *from Users


create table Roles(
Id int primary key identity,
[Name] nvarchar(20) not null,
UsersId int foreign key references Users(Id)
)

insert into Roles
values('Student',2),
('Electiric',1),
('Teacher',3)

select *from Roles

select Username, [Name] as Roles from Roles
join Users
on Roles.UsersId=Users.Id
