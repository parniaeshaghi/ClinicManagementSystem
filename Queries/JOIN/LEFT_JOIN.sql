USE [ClinicManagementSystem]
GO

/* همه‌ی سرویس‌های یک دکتر به ترتیب وقت ارائه شامل سرویس‌های هنوز ارائه نشده */
SELECT Personal_data_tbl.Name
	,Personal_data_tbl.FamilyName
	,Service_tbl.ServiceType
	,Service_tbl.Service_date
FROM Personal_data_tbl
JOIN Patient_tbl ON Personal_data_tbl.Id = Patient_tbl.PersonalData_Id
LEFT JOIN Service_tbl ON Patient_tbl.Id = Service_tbl.Patient_Id
ORDER BY Service_date
