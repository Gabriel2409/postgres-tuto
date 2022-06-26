-- group by 
-- null will be grouped together
-- you can group by several columns and everything you select must be in the groupby
SELECT "InvoiceId", COUNT(*) as "total_invoice_line" FROM  "InvoiceLine" GROUP BY "InvoiceId" ;

-- filter groups with the HAVING clause. Note: no reuse of alias in HAVING clause
SELECT "InvoiceId" , COUNT(*) total FROM  "InvoiceLine" GROUP BY "InvoiceId" HAVING COUNT(*)>13;
