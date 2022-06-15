USE [ClinicManagementSystem]
GO

/* ???? ???? ???? ???? ????? */
INSERT INTO Personal_data_tbl (
	Name
	,FamilyName
	,National_Id
	,Gender
	,PhoneNumber1
	,MobileNumber
	,Email
	)
VALUES (
	'Maryam'
	,'Keshavarz'
	,'#####'
	,1
	,'#####'
	,'#####'
	,'MaryamKeshavarz@###.###'
	)

DECLARE @personal_id INT

SELECT @personal_id = Id
FROM Personal_data_tbl
WHERE Name = 'Maryam'
	AND FamilyName = 'Keshavarz'

DECLARE @doctor_id INT

SELECT @doctor_id = Doctor_tbl.Id
FROM Doctor_tbl
JOIN Personal_data_tbl ON Personal_data_tbl.Id = Doctor_tbl.Personal_Id
WHERE Name = 'Ali'
	AND FamilyName = 'Salimi'

INSERT INTO User_tbl (
	Personal_Id
	,Doctor_Id
	,Salary
	,AccessType
	,Recommender
	,EducationalDegree
	,Resume
	)
VALUES (
	@personal_id
	,@doctor_id
	,'### Rial'
	,1
	,'####'
	,'Hesabdari'
	,'#####'
	)