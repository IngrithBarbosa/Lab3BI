#Tipo de paquete más pedido por los clientes
SELECT s.PackageTypeID, s.PackageTypeName
FROM `lab3bi.DatosLab3.Filter_OrderLines_Columns` f
JOIN `lab3bi.DatosLab3.Generate_PackagesTypes_ID` s ON f.PackageTypeID = s.PackageTypeID
GROUP BY s.PackageTypeID, s.PackageTypeName
ORDER BY SUM(f.Quantity) DESC
LIMIT 1;