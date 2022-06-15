USE [ClinicManagementSystem]
GO

/* مریضی پولش را پرداخت می‌کند و مریض دیگری وقت ویزیتش را کنسل می‌کند */
UPDATE Service_tbl
SET Compelete_payment = 1
WHERE Patient_Id = 4

UPDATE Service_tbl
SET Canceled = 1
WHERE Patient_Id = 9
