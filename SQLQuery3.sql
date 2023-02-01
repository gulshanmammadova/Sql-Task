Create Database BrandStoreDb

Use BrandStoreDb
drop table Notebooks
Create Table Brands
(
	Id int identity Primary Key,
   BrandName nvarchar(100)Not Null 
)

Create Table Notebooks
(
	Id int identity Primary Key,
	NotebookName nvarchar(50)Not Null,
	Price money 
)
Create Table Phones
(
	Id int identity Primary Key,
	PhoneName nvarchar(50)Not Null,
	Price money 
)
Alter Table Notebooks
Add BrandId int Not Null Foreign Key References Brands(Id)

Alter Table Phones
Add BrandId int Not Null Foreign Key References Phones(Id)

Insert Into Brands(BrandName)
Values
('Apple'),
('Samsung'),
('RedMi')
Insert Into Notebooks(NotebookName,Price,BrandId)
Values
('Notebook1',1232,2),
('NoteBook2',2341,1),
('Notebook 9 pro',1443,2),
('Notebook3',1252,1),
('NoteBook4',2341,2)

Insert Into Phones(PhoneName,Price,BrandId)
Values
('Phone1',532,1),
('Iphone X',2341,1),
('Samsung Galaxy A52',67,2),
('Phone3',1252,1),
('Redmi Note 9',2341,3)


Select Notebooks.NotebookName, Notebooks.Price,Brands.BrandName From Notebooks   Join Brands On Notebooks.Id = Brands.Id

Select Phones.PhoneName+' - '+ Brands.BrandName as BrandName From Phones  Join Brands On Phones.Id = Brands.Id 

Select * From Notebooks where Notebooks.BrandId in (Select Id From Brands where Brands.BrandName Like '%s%')

Select * From Notebooks where (NoteBooks.Price Between 2000 and 5000) OR NoteBooks.Price>5000

Select * From Phones where (Phones.Price Between 1000 and 1500) OR Phones.Price>1500
