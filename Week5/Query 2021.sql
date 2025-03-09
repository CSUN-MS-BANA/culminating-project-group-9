SELECT
    c.CountryID, c.CountryName, c.Region, c.IncomeLevel,
    ei.ECIID, ei.Year, ei.FDINet, ei.FDIInflowsToGDP, ei.FDIInflows,
    ei.FDIOutflowsPercent, ei.FDIOutflows, ei.GDP, ei.GDPGrowth,
    ei.GrossNationalSpending, ei.InflationConsumerPrices,
    ei.InflationRate, ei.InflationPercent, ei.GoodsNetTrade,
    ei.GoodsAndServicesNetTrade, ei.TradePercent, ei.ServicesTradedPercent, 
	ei.GovernmentSpendingToGDP, ei.GovernmentSpendingAnnualGrowth,
    ei.GovernmentSpending, ei.GovernmentEducationSpendingToGDP,
    ei.GovernmentEducationSpendingToTotalSpending, ei.GovernmentMilitarySpendingToGDP,
    ei.GovernmentMilitarySpendingToTotalSpending, ei.GovernmentMilitarySpending,
    eci.ElectricityAccess, eci.AgriculturalCarbonDioxide, eci.TransportCarbonDioxide,
    eci.WasteCarbonDioxide, eci.ForestArea, eci.RenewableEnergyConsumption,
    eci.TotalGreenhouseGas, pdi.LongTermExternalDebt, pdi.TotalPSD, pdi.LongTermPSD,
    pdi.ShortTermPSD, pdi.InterestPaymentsPercent, pdi.ExternalDebt, pdi.TotalDebt,
    si.FemaleLifeExpectancy, si.MaleLifeExpectancy, si.TotalLifeExpectancy,
    si.AdultLiteracyRate, si.YouthLiteracyRate, si.BasicDrinkingWater,
    si.SafelyManagedDrinkingWater, si.BasicHandwashing, si.PovertyRatio,
    si.NationalPovertyRatio, si.SocialPovertyRatio, si.UnemploymentWithAdvancedEducation,
    si.UnemploymentWithBasicEducation, si.UnemploymentWithIntermediateEducation,
    si.TotalUnemployment, si.YouthUnemployment, sti.ExchangeRate
FROM 
    Countries c
JOIN 
    Economic_Indicators ei ON c.CountryID = ei.CountryID
JOIN 
    Environmental_Indicators eci ON c.CountryID = eci.CountryID
JOIN 
    Public_Debt_Indicators pdi ON c.CountryID = pdi.CountryID
JOIN 
    Social_Indicators si ON c.CountryID = si.CountryID
JOIN 
    Statistical_Indicators sti ON c.CountryID = sti.CountryID
WHERE 
    ei.Year = 2021 AND eci.Year = 2021 AND pdi.Year = 2021 AND si.Year = 2021 AND sti.Year = 2021