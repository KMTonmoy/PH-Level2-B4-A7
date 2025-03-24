-- 1. Create Books Table
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    price NUMERIC(10, 2) CHECK (price >= 0) NOT NULL,
    stock INT CHECK (stock >= 0) NOT NULL,
    published_year INT CHECK (published_year >= 0) NOT NULL
);

-- 2. Create Customers Table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    joined_date DATE DEFAULT CURRENT_DATE
);

-- 3. Create Orders Table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT CHECK (quantity > 0) NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers (id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES books (id) ON DELETE CASCADE
);

-- 📂 PostgreSQL Problems & Sample Outputs Starts Here

-- Find books that are out of stock.
SELECT title FROM books WHERE stock = 0;

-- Retrieve the most expensive book in the store.
SELECT * FROM books ORDER BY price DESC LIMIT 1;

-- Find the total number of orders placed by each customer.
SELECT c.name, COUNT(o.id) AS total_orders
FROM customers c
    LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY
    c.name;

-- 📂 PostgreSQL Problems & Sample Outputs Ends Here

-- Insert Data In DATABASE STARTS Here

-- Insert Data In Books Table
INSERT INTO
    books (
        title,
        author,
        price,
        stock,
        published_year
    )
VALUES (
        'The Pragmatic Programmer',
        'Andrew Hunt',
        40.00,
        10,
        1999
    ),
    (
        'Clean Code',
        'Robert C. Martin',
        35.00,
        5,
        2008
    ),
    (
        'You Don''t Know JS',
        'Kyle Simpson',
        30.00,
        8,
        2014
    ),
    (
        'Refactoring',
        'Martin Fowler',
        50.00,
        3,
        1999
    ),
    (
        'Database Design Principles',
        'Jane Smith',
        20.00,
        0,
        2018
    );

-- Insert Data In Customers Table
INSERT INTO
    customers (name, email)
VALUES ('Tonmoy', 'tonmoy@email.com'),
    ('Toma', 'toma@email.com'),
    ('Topon', 'topon@email.com'),
    ('Joly', 'joly@email.com'),
    ('Onu', 'onu@email.com');

-- Insert Data In Orders Table
INSERT INTO
    orders (
        customer_id,
        book_id,
        quantity,
        order_date
    )
VALUES (1, 2, 1, '2024-03-10'),
    (2, 1, 1, '2024-02-20'),
    (1, 3, 2, '2024-03-05');
-- Insert Data In DATABASE ENDS Here
-- GET All DATA From Tables Starts Here
SELECT * FROM books;

SELECT * FROM customers;

SELECT * FROM orders;
-- GET All DATA From Tables Ends Here