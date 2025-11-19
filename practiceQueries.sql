-- View all users
SELECT * FROM users;

-- View all orders
SELECT * FROM orders;

-- Find all orders for user with ID = 1 (Alice)
SELECT * FROM orders WHERE user_id = 1;

-- List users who have placed at least one order
SELECT DISTINCT users.name FROM users JOIN orders ON users.user_id = orders.user_id;

-- Total spending per user
SELECT users.name, SUM(orders.amount) AS total_spent FROM users JOIN orders ON users.user_id = orders.user_id GROUP BY users.name;

-- Orders with an amount greater than $50
SELECT * FROM orders WHERE amount > 50;

-- Count how many orders exist for each status
SELECT status, COUNT(*) AS count FROM orders GROUP BY status;
