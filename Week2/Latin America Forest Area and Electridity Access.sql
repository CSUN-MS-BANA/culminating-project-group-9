SELECT c.CountryName, e.ForestArea, e.ElectricityAccess
FROM COUNTRIES c
JOIN Environment e ON c.CountryID = e.CountryID
WHERE c.Region = 'Latin America & Caribbean';
