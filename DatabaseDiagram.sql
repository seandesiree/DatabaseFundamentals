+------------------+
|     Authors      |
+------------------+
| author_id (PK)   |
| name             |
| biography        |
+------------------+
           |
           | 1
           |
           |------< has >------ N
           |                   |
           v                   v
+------------------+     +------------------+
|     Books        |     |   Transactions   |
+------------------+     +------------------+
| book_id (PK)     |     | transaction_id (PK)|
| title            |     | book_id (FK)       |
| author_id (FK)   |     | customer_id (FK)   |
| genre            |     | transaction_date   |
| publication_year |     | quantity           |
| price            |     | total_price        |
| stock_quantity   |     +--------------------+
+------------------+
           |
           | 1
           |
           |------< bought >--- N
           |                   |
           v                   v
+------------------+
|   Customers      |
+------------------+
| customer_id (PK) |
| name             |
| email            |
| phone            |
| address          |
+------------------+
