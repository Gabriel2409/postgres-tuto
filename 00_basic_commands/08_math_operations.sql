-- math operators can be used
SELECT
"InvoiceLineId"
,"UnitPrice"
,"Quantity"
,"UnitPrice" * "Quantity" AS "Total_cost"
FROM "InvoiceLine"
