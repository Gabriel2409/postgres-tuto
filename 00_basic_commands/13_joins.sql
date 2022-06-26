-- cartesian joins: each row of the first table joins with all the rows of the second table
-- can create very big tables
SELECT * FROM "Genre" CROSS JOIN "Invoice";
-- inner join
SELECT
a."AlbumId" a_id
,a."Title"
,t."Name"
FROM "Album" a INNER JOIN "Track" t ON a."AlbumId"= t."AlbumId"
ORDER BY a_id;
--self join
SELECT
a."Name" as a_name
, b."Name" as b_name FROM
"Track" a, "Track" b
WHERE a."AlbumId"=b."AlbumId";
-- left join, right join, same syntax. If nothing on the other side, row is still returned but with NULL
-- FULL OUTER JOIN: left + right