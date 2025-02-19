SELECT c.CountryName, p.TotalGovernmentDebt, p.DebtGDPRatio
FROM COUNTRIES c
JOIN Debt p ON c.CountryID = p.CountryID
WHERE p.Year = 2021 AND c.IncomeLevel = "High income";
