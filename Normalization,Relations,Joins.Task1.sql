create database TaskDB
use TaskDB

create table Users(
Id int primary key identity,
Username nvarchar(20) not null,
[Password] nvarchar(30) not null,
RoleId int references Roles(Id)
)



insert into Users
values('User1','Password1',2),
('User2','Password2',1),
('User3','Password3',3),
('User4','Password4',1),
('User5','Password5',3),
('User6','Password6',1)

select *from Users


create table Roles(
Id int primary key identity,
[Name] nvarchar(20) not null
)



insert into Roles
values('Student'),
('Electiric'),
('Teacher')

select *from Roles

select Username, [Name] as Roles from Roles
join Users
on Users.RoleId=Roles.Id
