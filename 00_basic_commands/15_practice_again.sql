-- Using a subquery, find the names of all the tracks for the album "Californication".
SELECT "Name" FROM "Track"
WHERE "AlbumId" = (
    SELECT "AlbumId" FROM "Album"
    WHERE "Title" = 'Californication'
);
-- Find the total number of invoices for each customer along with the customer's full name, city and email.
SELECT
c."FirstName"
,c."LastName"
,c."Email"
,c."City"
,i."CustomerId"
,Count(i."InvoiceId") as nb_invoices
FROM "Customer" c INNER JOIN "Invoice" i
ON c."CustomerId" = i."CustomerId"
GROUP BY 
i."CustomerId"
,c."FirstName"
,c."LastName"
,c."Email"
,c."City"

ORDER BY i."CustomerId"
;
-- Retrieve the track name, album, artistID, and trackID for all the albums.
SELECT
a."Title"
,a."ArtistId"
,t."Name"
,t."TrackId"

FROM "Album" a INNER JOIN "Track" t
ON a."AlbumId" = t."AlbumId";

-- alternate syntax. Seems like it does something like a cross join and then filter
-- seems to be considered less readable
-- https://stackoverflow.com/questions/1018822/inner-join-on-vs-where-clause
SELECT a."Title", t."Name", t."TrackId" FROM "Album" a, "Track" t 
WHERE a."AlbumId" = t."AlbumId";

-- Retrieve a list with the managers last name, and the last name of the employees who report to him or her.
SELECT a."EmployeeId", a."LastName", a."ReportsTo", b."LastName" FROM "Employee" a , "Employee" b WHERE a."ReportsTo" = b."EmployeeId";
-- Alternate
SELECT a."EmployeeId", a."LastName", a."ReportsTo", b."LastName" FROM "Employee" a INNER JOIN "Employee" b ON a."ReportsTo" = b."EmployeeId";

-- Find the name and ID of the artists who do not have albums. 
SELECT "Name", "ArtistId" FROM "Artist" WHERE "ArtistId" NOT IN (SELECT DISTINCT "ArtistId" FROM "Album");
--alternate
SELECT ar."Name", ar."ArtistId", al."AlbumId" FROM "Artist" ar LEFT JOIN "Album" al ON ar."ArtistId"=al."ArtistId" WHERE al."AlbumId" IS NULL ;
--Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.
SELECT "FirstName", "LastName" FROM "Employee"
UNION 
SELECT "FirstName", "LastName" FROM "Customer"
ORDER BY "LastName" DESC;
-- See if there are any customers who have a different city listed in their billing city versus their customer city.
SELECT c."City", i."BillingCity" FROM "Customer" c INNER JOIN "Invoice" i ON c."CustomerId"=i."CustomerId" WHERE c."City" <> i."BillingCity"