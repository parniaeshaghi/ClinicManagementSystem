USE [ClinicManagementSystem]
GO

/* آخر سال سرویس‌هایی که کنسل شدند پاک می‌شوند */
DELETE
FROM Service_tbl
WHERE Canceled = 1
