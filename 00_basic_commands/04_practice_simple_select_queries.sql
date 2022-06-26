
--Retrieve all the data from the tracks table. 
SELECT * from "Track";
-- Who is the composer for track 18? 
SELECT "TrackId", "Composer" from "Track" WHERE "TrackId"=18;
-- What is the billing address for customer 31? (Invoice table)
SELECT DISTINCT "CustomerId", "BillingAddress" from "Invoice" WHERE "CustomerId"=31;
-- How many disting playlists?
SELECT Count("Name") AS nb_playlist from "Playlist";
-- Invoice date of customer in Santiago:
SELECT "CustomerId", "InvoiceDate", "BillingCity" FROM "Invoice" WHERE "BillingCity"='Santiago' LIMIT 1;