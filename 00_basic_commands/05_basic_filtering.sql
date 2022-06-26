-- exact match
SELECT * FROM "InvoiceLine" WHERE "UnitPrice"=0.99;
-- greater than
SELECT * FROM "InvoiceLine" WHERE "UnitPrice">1;
-- between than
SELECT * FROM "InvoiceLine" WHERE "UnitPrice" BETWEEN 0.99 AND 1.99;
-- between is the same as 
SELECT * FROM "InvoiceLine" WHERE "UnitPrice">= 0.99 AND "UnitPrice"<=1.99;
-- different
SELECT * FROM "InvoiceLine" WHERE "UnitPrice"<>0.99;
-- null values
SELECT * FROM "InvoiceLine" WHERE "UnitPrice" IS NULL;
SELECT * FROM "InvoiceLine" WHERE "UnitPrice" IS NOT NULL;
-- in (faster than or, can contain another select)
SELECT * FROM "InvoiceLine" WHERE "UnitPrice" IN (0.99, 1.99);
-- or
SELECT * FROM "InvoiceLine" WHERE "UnitPrice"=0.99 OR "UnitPrice"=1.99;
-- and
SELECT * FROM "InvoiceLine" WHERE "UnitPrice"=0.99 AND "InvoiceId"=1;


