-- Cleaned DimCustomer Table --
SELECT
	cust.customerkey AS [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,cust.firstname AS [First Name]
      --,[MiddleName]
      ,cust.lastname AS [Last Name]
	  ,cust.firstname + ' ' + cust.lastname AS [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE cust.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,cust.DateFirstPurchase AS [Date First Purchase]
      --,[CommuteDistance]
	  ,geo.city AS [Customer City]
FROM
	dbo.dimcustomer AS cust
	LEFT JOIN dbo.dimgeography AS geo ON geo.geographykey = cust.geographykey
ORDER BY
[Customer Key] ASC -- Ordered List Ascending by Customer Key	