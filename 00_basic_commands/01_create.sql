-- create a new table named Shoes

CREATE TABLE "Shoes"
(
"Id"        char(10)         PRIMARY KEY, -- fixed line string
"Brand"     char(10)         NOT NULL,
"Type"      char(250)        NOT NULL,
"Color"     char(250)        NOT NULL,
"Price"     decimal(8,2)     NOT NULL,
"Desc"      varchar(750)     NULL -- variable line string, accepts null values
);
