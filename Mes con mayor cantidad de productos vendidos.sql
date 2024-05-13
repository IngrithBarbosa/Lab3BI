#Mes con mayor cantidad de productos vendidos
SELECT s.Month
FROM `lab3bi.DatosLab3.Filter_OrderLines_Columns` f
JOIN `lab3bi.DatosLab3.Generate_Dates_ID` s ON f.DateID = s.DateID
GROUP BY s.Month
ORDER BY SUM(f.Quantity) DESC
LIMIT 1;