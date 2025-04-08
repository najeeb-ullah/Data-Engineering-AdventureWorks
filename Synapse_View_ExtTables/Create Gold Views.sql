---------- Create View Address  -----------------
CREATE VIEW gold.address
AS
SELECT 
* 
FROM
    OPENROWSET(
        BULK 'https://dlpracticenajeeb.dfs.core.windows.net/silver/Address/',
        FORMAT = 'DELTA'
    ) AS query1


---------- Create View Product  -----------------
CREATE VIEW gold.product
AS
SELECT 
* 
FROM
    OPENROWSET(
        BULK 'https://dlpracticenajeeb.dfs.core.windows.net/silver/Product/',
        FORMAT = 'DELTA'
    ) AS query2


---------- Create View Customer Address  -----------------
CREATE VIEW gold.customeraddress
AS
SELECT 
* 
FROM
    OPENROWSET(
        BULK 'https://dlpracticenajeeb.dfs.core.windows.net/silver/CustomerAddress/',
        FORMAT = 'DELTA'
    ) AS query3


---------- Create View Customers  -----------------
CREATE VIEW gold.customers
AS
SELECT 
* 
FROM
    OPENROWSET(
        BULK 'https://dlpracticenajeeb.dfs.core.windows.net/silver/Customers/',
        FORMAT = 'DELTA'
    ) AS query4
