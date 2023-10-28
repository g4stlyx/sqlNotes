USE sql_store;

INSERT INTO customers
VALUES (
	DEFAULT, -- letting mysql increase the id automatically to avoide bugs
    "John", 
    "Smith", 
    "1990-01-01",  
    DEFAULT, -- phoneNumber=NULL in this case
    "address",
    "city",
    "CA",
    DEFAULT -- = points=0 in this case
);

-- specifying the fields which will be filled, to avoid specifying default values
INSERT INTO customers (
	first_name,
    last_name,
    birth_date,
    address,
    city,
    state)
VALUES (
	"sefa",
    "a",
    "1010-10-10",
    "hell",
    "city",
    "HL"
);