USE [ClinicManagementSystem]
GO

/* ???? ???? ???? ???? ???? ????? ???? ????  */
INSERT INTO Personal_data_tbl (
	Name
	,FamilyName
	,National_Id
	,Gender
	,PhoneNumber1
	,MobileNumber
	)
VALUES (
	'Sahel'
	,'Mohammadi'
	,'#####'
	,1
	,'#####'
	,'#####'
	)

INSERT INTO Insurance_tbl (
	InsuranceName
	,InsuranceType
	)
VALUES (
	'bime'
	,'Dolati'
	)

DECLARE @personal_id INT

SELECT @personal_id = Id
FROM Personal_data_tbl
WHERE Name = 'Sahel'
	AND FamilyName = 'Mohammadi'

DECLARE @insurance_id INT

SELECT @insurance_id = Insurance_tbl.Id
FROM Insurance_tbl
WHERE InsuranceName = 'Bime'

DECLARE @doctor_id INT

SELECT @doctor_id = Doctor_tbl.Id
FROM Doctor_tbl
JOIN Personal_data_tbl ON Personal_data_tbl.Id = Doctor_tbl.Personal_Id
WHERE Name = 'Ali'
	AND FamilyName = 'Salimi'

DECLARE @user_id INT

SELECT @user_id = User_tbl.Id
FROM User_tbl
JOIN Personal_data_tbl ON Personal_data_tbl.Id = User_tbl.Personal_Id
WHERE Name = 'Maryam'
	AND FamilyName = 'Keshavarz'

INSERT INTO Patient_tbl (
	PersonalData_Id
	,InsuranceId
	,Insurance_Booklet_Number
	,Doctor_Id
	,UserId_Recorder
	)
VALUES (
	@personal_id
	,@insurance_id
	,'###'
	,@doctor_id
	,@user_id
	)