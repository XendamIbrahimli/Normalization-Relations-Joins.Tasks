create database TaskDB2
use TaskDB2

create table Products(
Id int primary key identity,
[Name] nvarchar(20) not null,
Price decimal(3,1) not null,
Cost decimal(3,1),
CategoryId int references Categories(Id)
)


insert into Products
values('Product1',14.5,12.5,2),
('Product2',10.5,9.8,1),
('Product3',12.5,11.1,3),
('Product4',28.8,20.0,1),
('Product5',45,40,2),
('Product6',60.8,55.2,2)

select *from Products



create table Categories(
Id int primary key identity,
[Name] nvarchar(20)
)



insert into Categories
values('Category1'),
('Category2'),
('Category3')


select *from Categories

create table Colors(
Id int primary key identity,
[Name] nvarchar(20) not null
)



INSERT into Colors
values('Yellow'),('Black'),('White')

select *from Colors

create table ProductsColors(
Id int Primary key identity,
ProductId int foreign key references Products(Id),
ColorId int foreign key references Colors(Id)
)



insert into ProductsColors
values(1,2),(2,1),(2,3),(3,3),(4,1),(5,2),(5,1),(6,2)

select *from ProductsColors




select Products.[Name] as [Product Name],Categories.[Name] as [Category Name] ,Colors.[Name] as [Color Name] from Categories
join Products
on Products.CategoryId =Categories.Id
join ProductsColors
on ProductsColors.ProductId =Products.Id
join Colors
on ProductsColors.ColorId=Colors.Id