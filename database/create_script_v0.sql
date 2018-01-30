USE FMLBlog;

IF OBJECT_ID ('dbo.Post', 'U') IS NULL  
	CREATE TABLE dbo.Post  
	(  
		Id int IDENTITY(1,1)
		,Author varchar(20)
		,DatePosted datetime
		,Content varchar(1000)		
	);    
GO  
