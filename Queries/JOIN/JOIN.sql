USE [ClinicManagementSystem]
GO

/* شماره تماس پزشک‌هایی که تخصص قلب دارند */
SELECT Name
	,FamilyName
	,PhoneNumber1
	,PhoneNumber2
	,MobileNumber
FROM Personal_data_tbl
JOIN Doctor_tbl ON Doctor_tbl.Personal_Id = Personal_data_tbl.Id
WHERE Speciality = 'Ghalb'
