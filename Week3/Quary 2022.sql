SELECT 
    c.CountryID, c.CountryName, c.Region, c.IncomeLevel, 
    ei.ECIID, ei.Year, ei.FDINet, ei.FDIInflowsToGDP, ei.FDIInflows,
    ei.FDIOutflowsPercent, ei.FDIOutflows, ei.GDP, ei.GDPGrowth,
    ei.GovernmentSpending, ei.GrossNationalSpending, ei.InflationConsumerPrices,
    ei.InflationRate, ei.InflationPercent, ei.MilitarySpending, ei.GoodsNetTrade,
    ei.GoodsAndServicesNetTrade, ei.TradePercent, ei.ServicesTradedPercent,
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
    ei.Year = 2022 AND eci.Year = 2022 AND pdi.Year = 2022 AND si.Year = 2022 AND sti.Year = 2022