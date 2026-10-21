# Banking Data Analysis Portfolio

## Project 1: Customer Accounts and SQL JOINs

**Status:** Learning project — initial SQL queries tested using synthetic data.

### Objective
Analyse a fictional banking database to understand relationships between customers and accounts and identify missing customer information.

### Tools
- SQLite
- DBeaver Community
- SQL
- GitHub

### Dataset
- 100 fictional bank accounts
- 25 customer records
- Two tables: `accounts` and `customers`

### SQL techniques demonstrated
- INNER JOIN to retrieve accounts with matching customers
- LEFT JOIN to retain all accounts
- NULL checks to identify unmatched records
- Basic data quality validation

### Results observed
- INNER JOIN: 99 account records
- LEFT JOIN: 100 account records
- Unmatched accounts: 1 (account ID 100)

### What I learned
A LEFT JOIN preserves records from the left table even when a matching record does not exist in the right table. An INNER JOIN only returns matching records.

This difference is important in financial reporting because incorrect joins can cause accounts to disappear from reports.

### Next steps
- Add validation queries
- Analyse account balances by country
- Develop further financial data quality checks

*All data is fictional and used for educational purposes.*
