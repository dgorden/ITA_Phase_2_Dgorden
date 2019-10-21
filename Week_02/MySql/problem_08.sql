USE ita;
SELECT OrderID, CustomerID, ShipCountry FROM Orders WHERE ShipCountry LIKE "%France%" OR ShipCountry LIKE "%Belgium%";