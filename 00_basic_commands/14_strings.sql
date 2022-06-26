-- string functions: concatenate, substring, trim, upper,lower
SELECT UPPER("Name") from "Artist";
SELECT LOWER("Name") from "Artist";
--concat:
SELECT UPPER("LastName") || ' - ' || "FirstName" from "Customer";

-- also TRIM, RTRIM, LTRIM

--substr: string, position, nb_chars
SELECT SUBSTR("LastName", 1,4) from "Customer";
