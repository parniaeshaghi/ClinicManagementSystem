USE [ClinicManagementSystem]
GO

/* وارد کردن دکتر جدید به سیستم */
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
	'Ali'
	,'Salimi'
	,'#####'
	,0
	,'#####'
	,'#####'
	,'alisalimi@###.###'
	)

DECLARE @personal_id INT

SELECT @personal_id = Id
FROM Personal_data_tbl
WHERE Name = 'Ali'
	AND FamilyName = 'Salimi'

INSERT INTO Doctor_tbl (
	Personal_Id
	,LEVEL
	,Speciality
	,Clinic_Phone
	,Clinic_Address
	,Medical_Association_Number
	)
VALUES (
	@personal_id
	,'Attending'
	,'General'
	,'#####'
	,'## Street'
	,'#####'
	)

DECLARE @id_doctor INT

SELECT @id_doctor = Id
FROM Doctor_tbl
WHERE Personal_Id = personal_id

INSERT INTO Account_Tbl (
	Id
	,Id_Doctor
	,AccountType
	,AccountBegin
	)
VALUES (
	1
	,@id_doctor
	,'Admin'
	,1401 - 01 - 01
	)
