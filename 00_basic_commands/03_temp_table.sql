-- temp tables will be deleted when session is terminated
-- faster than real tables

CREATE TEMPORARY TABLE "Gucci" AS
(
    SELECT *
    FROM "Shoes"
    WHERE "Brand"='Gucci'
);
