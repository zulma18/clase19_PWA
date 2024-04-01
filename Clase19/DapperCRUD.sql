USE UniversityDB;
GO
CREATE PROCEDURE dbo.spUniversity_GetAll
AS
BEGIN
	SELECT Id, Name, Phone FROM University
END;
GO

CREATE PROCEDURE dbo.spUniversity_GetById(@Id INT)
AS
BEGIN
	SELECT Id, Name, Phone 
	FROM University
    WHERE Id = @Id
END;
GO

CREATE PROCEDURE dbo.spUniversity_Insert
(
	@Name nvarchar(50),
	@Phone nvarchar(20)
)
AS
BEGIN
	INSERT INTO University 
	VALUES(@Name, @Phone)
END;
GO

CREATE PROCEDURE dbo.spUniversity_Update
(
	@Name nvarchar(50),
	@Phone nvarchar(20),
	@Id int
)
AS
BEGIN
	UPDATE University 
	SET Name = @Name,
	Phone = @Phone
    WHERE Id = @Id
END;
GO

CREATE PROCEDURE dbo.spUniversity_Delete
(@Id int)
AS
BEGIN
	DELETE FROM University WHERE Id = @Id
END;
