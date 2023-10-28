-- kind of a shortcut for long "where" statements

USE sql_store;

-- SELECT *
-- FROM customers
-- WHERE state = "VA" OR state = "GA" OR state="FL";

SELECT *
FROM customers
WHERE state NOT IN ("VA","FL","GA");