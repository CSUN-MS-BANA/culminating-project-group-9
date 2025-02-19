SELECT c.CountryName, e.GDP, e.InflationRate
FROM COUNTRIES c
JOIN Economy e ON c.CountryID = e.CountryID
WHERE e.Year = 2021;
