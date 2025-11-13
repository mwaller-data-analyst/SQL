SELECT
  a. SalesOrderID
, a. OrderDate
, a. DueDate
, a. ShipDate
, a. SalesPersonID
, a. SubTotal
, a. TaxAmt
, a. Freight
, a. TotalDue
, b. Name
, b. BusinessEntityID


FROM 
  Sales.SalesOrderHeader AS a
  INNER JOIN Sales.Customer cust
      ON a.CustomerID = cust.CustomerID
  LEFT JOIN Sales.Store AS b
      ON b.BusinessEntityID = cust.StoreID
  LEFT JOIN Sales.SalesPerson AS sp
      ON sp.BusinessEntityID = b.BusinessEntityID
