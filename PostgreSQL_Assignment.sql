-- Active: 1742204523927@@127.0.0.1@5432@bookstore_db
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    price NUMERIC(10, 2) CHECK (price >= 0) NOT NULL,
    stock INT CHECK (stock >= 0) NOT NULL,
    published_year INT CHECK (published_year >= 0) NOT NULL
);