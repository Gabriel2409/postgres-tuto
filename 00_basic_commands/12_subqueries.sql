-- subquery subsets can only retrieve a single column
SELECT
"TrackId"
,"Name"
,"AlbumId"
FROM "Track" WHERE "AlbumId" IN (
    SELECT
    "AlbumId"
    FROM
    "Album" WHERE "Title" LIKE 'A%'
);