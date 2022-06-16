USE [ClinicManagementSystem]
GO

/* وزن‌های مریض‌هایی که در مشکلاتشان زانو درد است به ترتیب از بیشترین */
SELECT ProblemList
	,Weight
FROM Patient_tbl
WHERE ProblemList LIKE ('%Zano dard%')
ORDER BY Weight DESC
