-- ===============================
-- 1. Create Tables
-- ===============================

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    created_at DATE
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- ===============================
-- 2. Insert Sample Users
-- ===============================

INSERT INTO users (user_id, name, email, created_at) VALUES
(1, 'Alice', 'alice@example.com', '2023-01-14'),
(2, 'Bob', 'bob@example.com', '2023-02-02'),
(3, 'Charlie', 'charlie@example.com', '2023-03-10'),
(4, 'Diana', 'diana@example.com', '2023-03-22'),
(5, 'Ethan', 'ethan@example.com', '2023-04-05');

-- ===============================
-- 3. Insert Sample Orders
-- ===============================

INSERT INTO orders (order_id, user_id, order_date, amount, status) VALUES
(101, 1, '2023-05-01', 49.99, 'Completed'),
(102, 2, '2023-05-03', 19.99, 'Completed'),
(103, 1, '2023-05-09', 89.50, 'Pending'),
(104, 3, '2023-05-11', 120.00, 'Completed'),
(105, 2, '2023-05-14', 15.00, 'Cancelled'),
(106, 4, '2023-05-16', 75.25, 'Completed'),
(107, 1, '2023-05-20', 200.00, 'Completed');
