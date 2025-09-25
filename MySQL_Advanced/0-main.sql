-- Show existing records in the users table
SELECT * FROM users;

-- Insert new users into the table
INSERT INTO users (email, name) VALUES ('bob@dylan.com', 'Bob');
INSERT INTO users (email, name) VALUES ('sylvie@dylan.com', 'Sylvie');

-- Show records after insertion
SELECT * FROM users;

-- Try to insert a duplicate email
INSERT INTO users (email, name) VALUES ('bob@dylan.com', 'Jean');  -- Should fail because of the UNIQUE constraint

-- Show the final state of the users table
SELECT * FROM users;

