-- DataMentora Portfolio
-- Lesson: Connect tables without surprises
-- Project: Banking Customer JOINs
-- Database: SQLite (fictional banking data)

-- 1. INNER JOIN: accounts with matching customers
-- Result: 99 rows

SELECT
    a.account_id,
    c.name,
    a.country,
    a.balance
FROM accounts AS a
INNER JOIN customers AS c
    ON a.customer_id = c.customer_id;


-- 2. LEFT JOIN: keep all accounts
-- Result: 100 rows

SELECT
    a.account_id,
    c.name,
    a.country,
    a.balance
FROM accounts AS a
LEFT JOIN customers AS c
    ON a.customer_id = c.customer_id
ORDER BY a.account_id;


-- 3. DATA QUALITY: find unmatched accounts
-- Result: 1 row (account 100)

SELECT
    a.account_id,
    a.customer_id,
    a.balance
FROM accounts AS a
LEFT JOIN customers AS c
    ON a.customer_id = c.customer_id
WHERE c.customer_id IS NULL;
