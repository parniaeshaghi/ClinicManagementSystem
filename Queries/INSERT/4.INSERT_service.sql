USE [ClinicManagementSystem]
GO

/* ارائه سرویس جدید به مریض  */
DECLARE @doctor_id INT

SELECT @doctor_id = Doctor_tbl.Id
FROM Doctor_tbl
JOIN Personal_data_tbl ON Personal_data_tbl.Id = Doctor_tbl.Personal_Id
WHERE Name = 'Ali'
	AND FamilyName = 'Salimi'

DECLARE @patient_id INT

SELECT @patient_id = Patient_tbl.Id
FROM Patient_tbl
JOIN Personal_data_tbl ON Personal_data_tbl.Id = Patient_tbl.PersonalData_Id
WHERE Name = 'Sahel'
	AND FamilyName = 'Mohammadi'

INSERT INTO Service_tbl (
	Patient_Id
	,Doctor_Id
	,ServiceType
	,Record_date
	)
VALUES (
	@patient_id
	,@doctor_id
	,'Visit'
	,1401 - 01 - 29
	)
