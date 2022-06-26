-- name starts wit Br
SELECT "FirstName", "LastName" from "Customer" WHERE "LastName" LIKE 'Br%';
-- _ matches a single char
SELECT "FirstName", "LastName" from "Customer" WHERE "FirstName" LIKE 'Helen_';
-- regex: ~*: case insensitive, ~ : case sensitive
SELECT "FirstName", "LastName" from "Customer" WHERE "FirstName" ~* 'Helen(?:a|e)';
-- several values in an array:
SELECT "FirstName", "LastName" from "Customer" WHERE "FirstName" LIKE ANY (Array['Mi%', 'Helen_']);