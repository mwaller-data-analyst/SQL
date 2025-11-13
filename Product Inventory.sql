SELECT
  a.Shelf
, a.Bin
, a.Quantity
, b.Name

FROM
  Production.ProductInventory AS a
  LEFT JOIN Production.Product AS b
    ON a.ProductID = b.ProductID

WHERE
a. Quantity < 50

ORDER BY
a.Shelf, a. Bin