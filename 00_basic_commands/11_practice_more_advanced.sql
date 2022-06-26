-- Find nb of tracks that have a length above 5000000 ms
SELECT Count("Name") count_track FROM "Track" WHERE "Milliseconds" > 5000000 ;
-- Find all the invoices whose total is between $5 and $15 dollars.
SELECT Count(*) FROM "Invoice" WHERE "Total" BETWEEN 5 AND 15;
-- Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
SELECT * FROM "Customer" WHERE "State" in ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY');
-- Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.
SELECT * FROM "Invoice" WHERE "CustomerId" in (56,58) AND "Total" BETWEEN 1 AND 5;
--  Find all the tracks whose name starts with 'All'.
SELECT * FROM "Track" WHERE "Name" LIKE 'All%';
SELECT * FROM "Track" WHERE "Name" ~ '^All.+';
-- Find all the customer emails that start with "J" and are from gmail.com.
SELECT * FROM "Customer" WHERE "Email" LIKE 'j%gmail.com';
SELECT * FROM "Customer" WHERE "Email" ~* '^.*gmail.com$';
-- Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.
SELECT * FROM "Invoice" WHERE "BillingCity" in ('Brasília', 'Edmonton', 'Vancouver') ORDER BY "InvoiceId" DESC;
-- show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.
SELECT "CustomerId" c, Count("InvoiceId") as nb_orders FROM "Invoice" GROUP BY c;
-- Find the albums with 12 or more tracks.
SELECT "AlbumId", Count("AlbumId") as nbtracks FROM "Track" GROUP BY "AlbumId" HAVING Count("AlbumId")  >=12;