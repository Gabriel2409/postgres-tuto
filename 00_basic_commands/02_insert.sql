-- inserts by column order
INSERT INTO "Shoes" VALUES(
'14535974'
,'Gucci'
,'Slippers'
,'Pink'
,'695.00'
,NULL
);

-- inserts into specific columns (better, no need to have cols in order)

INSERT INTO "Shoes"
(
"Id"
,"Brand"
,"Type"
,"Color"
,"Price"
,"Desc"
)
VALUES(
'24535974'
,'Gucci2'
,'Slippers2'
,'Pink2'
,'895.00'
,NULL
);