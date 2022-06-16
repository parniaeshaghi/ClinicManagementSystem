USE [ClinicManagementSystem]
GO

/* میانگین قد و وزن مریض‌ها بر اساس بیماریشان */
SELECT Condition
	,AVG(Weight) AS Weight_Average
	,AVG([Lenght(cm)]) AS Length_Average
FROM Patient_tbl
GROUP BY Condition
