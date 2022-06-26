-- order by ascending order (ASC is optional)
SELECT * from "MediaType" ORDER BY "Name" ASC; -- ASC, DESC only applies to names it directly precedes
-- order by descending order
SELECT * from "MediaType" ORDER BY "Name" DESC;
-- multiple sort
SELECT * from "MediaType" ORDER BY "Name" DESC, "MediaTypeId" ASC;
-- complex sort: first puts Protected AAC audio file on top then sort by Name
SELECT * from "MediaType" ORDER BY
    CASE WHEN "Name"= 'Protected AAC audio file' then 0 else 1 end, 
    "Name" ASC;

-- Note: you can sort by cols you did not select. 
-- ORDER BY must be the last clause of SELECT statement;