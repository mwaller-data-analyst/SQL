SELECT
a. [BusinessEntityID],
b. [FirstName],
b. [LastName],
a. [NationalIDNumber],
a. [JobTitle],
a. [BirthDate],
a. [HireDate],
a. [VacationHours],
a. [SickLeaveHours]

FROM
[AdventureWorks2022].HumanResources.Employee as a
INNER JOIN [AdventureWorks2022].Person.Person as b
on a.BusinessEntityID = b.BusinessEntityID
