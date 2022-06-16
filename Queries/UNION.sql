USE [ClinicManagementSystem]
GO

/* لیست همه کارکنان مطب */
SELECT CONCAT (
		Name
		,' '
		,FamilyName
		) AS Staff
FROM Personal_data_tbl
JOIN Doctor_tbl ON Doctor_tbl.Personal_Id = Personal_data_tbl.Id

UNION

SELECT CONCAT (
		Name
		,' '
		,FamilyName
		)
FROM Personal_data_tbl
JOIN User_tbl ON User_tbl.Personal_Id = Personal_data_tbl.Id
