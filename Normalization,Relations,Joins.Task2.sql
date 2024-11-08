create database TaskDB2
use TaskDB2

create table Products(
Id int primary key identity,
[Name] nvarchar(20) not null,
Price decimal(3,1) not null,
Cost nvarchar(20) 
)

insert into Products
values('Oil',14.5,'AA'),
('Bread',10.5,'BB'),
('Chocolate',12.5,'CC')

select *from Products



create table Categories(
Id int primary key identity,
[Name] nvarchar(20),
ProductId int foreign key references Products(Id)
)

insert into Categories
values('Ulker',3),
('Gunebaxan',1),
('Albeni',3),
('Qara corey',2)

select *from Categories

create table Colors(
Id int primary key identity,
[Name] nvarchar(20) not null
)

INSERT into Colors
values('Yellow'),('Black'),('White')

select *from Colors

create table CategoriesColors(
Id int Primary key identity,
CategoryId int foreign key references Categories(Id),
ColorId int foreign key references Colors(Id)
)

insert into CategoriesColors
values(1,2),(2,1),(3,3),(4,2),(3,2)

select *from CategoriesColors

select Products.[Name] as [Product Name],Categories.[Name] as [Category Name] ,Colors.[Name] as [Color Name] from Products
join Categories
on Categories.ProductId=Products.Id
join CategoriesColors
on CategoriesColors.CategoryId=Categories.Id
join Colors
on CategoriesColors.ColorId=Colors.Id