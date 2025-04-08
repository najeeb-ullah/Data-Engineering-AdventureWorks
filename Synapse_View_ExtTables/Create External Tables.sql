CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'YOUR_PASSWORD_HERE'


CREATE DATABASE SCOPED CREDENTIAL cred_najeeb
WITH
IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
    (
        LOCATION = 'https://dlpracticenajeeb.dfs.core.windows.net/silver',
        CREDENTIAL = cred_najeeb
    )


CREATE EXTERNAL DATA SOURCE source_gold
WITH
    (
        LOCATION = 'https://dlpracticenajeeb.dfs.core.windows.net/gold',
        CREDENTIAL = cred_najeeb
    )

CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


------------- CREATE EXTERNAL TABLE CUSTOMERS---------------
CREATE EXTERNAL TABLE gold.extcustomers
WITH(
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.customers


------------- CREATE EXTERNAL TABLE ADDRESS---------------
CREATE EXTERNAL TABLE gold.extaddress
WITH(
    LOCATION = 'extaddress',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.address


------------- CREATE EXTERNAL TABLE ADDRESS---------------
CREATE EXTERNAL TABLE gold.extcustomeraddress
WITH(
    LOCATION = 'extcustomeraddress',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.customeraddress


------------- CREATE EXTERNAL TABLE ADDRESS---------------
CREATE EXTERNAL TABLE gold.extproduct
WITH(
    LOCATION = 'extproduct',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.product