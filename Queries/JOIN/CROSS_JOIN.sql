USE [ClinicManagementSystem]
GO

/* ترکیب همه دکترها و مریض‌ها برای وقت‌های ویزیت */
SELECT CONCAT (
		doctor.Name
		,' '
		,doctor.FamilyName
		) AS Doctor
	,CONCAT (
		patient.Name
		,' '
		,patient.FamilyName
		) AS Patient
FROM Personal_data_tbl doctor
CROSS JOIN Personal_data_tbl patient
JOIN Doctor_tbl ON Doctor_tbl.Personal_Id = doctor.Id
JOIN Patient_tbl ON Patient_tbl.PersonalData_Id = patient.Id
