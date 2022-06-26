-- used to summarize data: AVG, COUNT, MIN, MAX, SUM
SELECT AVG("UnitPrice") AS "avg_price" FROM "InvoiceLine";

-- count all rows, including null values
SELECT COUNT(*) AS "total" FROM "InvoiceLine";
-- counts all the rows in a specific column, ignoring NULL values
SELECT COUNT("InvoiceId") AS "total" FROM "InvoiceLine";
-- only distinct (does not work with *)
SELECT COUNT(DISTINCT "InvoiceId") AS "total" FROM "InvoiceLine";
