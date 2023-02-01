Create Database DepartmentInfoDb

Use DepartmentInfoDb

Create Table Departments
(
	Id int identity Primary Key,
	Name nvarchar(100) Not NULL Check(Len(Name) >= 2)	
)
Create Table Employees
(
	Id int identity Primary Key,
	FullName nvarchar(100) Not NULL Check(Len(FullName) > 3),
	Salary money Not Null Check(Salary>0),
	Email nvarchar(100) Not NUll Unique
)

Alter Table Employees
Add DepartmentId int Not Null Foreign Key References Departments(Id)

Select * from Employees

