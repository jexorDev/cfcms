USE FMLBlog;

IF OBJECT_ID ('dbo.Post', 'U') IS NOT NULL
	DROP TABLE Post;
GO 
	CREATE TABLE dbo.Post  
	(  
		Id int IDENTITY(1,1)
		,Title varchar(50)
		,DatePosted datetime
		,Content varchar(1000)	
		,PRIMARY KEY (Id)
		,CategoryId int FOREIGN KEY REFERENCES Category(Id)	
		,AuthorId int FOREIGN KEY REFERENCES Author(Id)
	);  
IF OBJECT_ID ('dbo.Category', 'U') IS NOT NULL
	DROP TABLE Category;
GO 
	CREATE TABLE dbo.Category  
	(  
		Id int IDENTITY(1,1)
		,Name varchar(20)		
		,PRIMARY KEY (Id)
	); 
IF OBJECT_ID ('dbo.Author', 'U') IS NOT NULL
	DROP TABLE Author;
GO 
	CREATE TABLE dbo.Author  
	(  
		Id int IDENTITY(1,1)
		,Name varchar(20)		
		,PRIMARY KEY (Id)
	); 
	  



INSERT INTO Post (Author, Title, DatePosted, Content, CategoryId) VALUES ('Dustin Seger', 'Which credit card should I open?', GETDATE(), 'credit card post here', 1);
INSERT INTO Category (Name) VALUES ('Credit Cards');
INSERT INTO Category (Name) VALUES ('Retirement');
INSERT INTO Category (Name) VALUES ('Investments');
INSERT INTO Author (Name) VALUES ('Dustin Seger');

SELECT TOP 4 * FROM Post ORDER BY DatePosted DESC ;


select * from category;
