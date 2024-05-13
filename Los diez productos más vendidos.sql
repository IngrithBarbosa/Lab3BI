#Los diez productos más vendidos
SELECT f.StockItemID, s.StockItemName, SUM(f.Quantity) AS TotalQuantity
FROM `lab3bi.DatosLab3.Filter_OrderLines_Columns` f
JOIN `lab3bi.DatosLab3.Generate_StockItems_ID` s ON f.StockItemID = s.StockItemID
GROUP BY f.StockItemID, s.StockItemName
ORDER BY TotalQuantity DESC
LIMIT 10;
