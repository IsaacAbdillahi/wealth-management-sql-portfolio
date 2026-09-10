-- ===================================
-- Wealth Management SQL Portfolio
-- Database Schema
-- ===================================

CREATE TABLE advisers (
    adviser_id INT PRIMARY KEY,
    adviser_name VARCHAR(100),
    region VARCHAR(50)
);

CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(100),
    age INT,
    risk_profile VARCHAR(20),
    adviser_id INT,
    FOREIGN KEY (adviser_id) REFERENCES advisers(adviser_id)
);

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    client_id INT,
    proposition VARCHAR(50),
    aum DECIMAL(18,2),
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE fees (
    fee_id INT PRIMARY KEY,
    account_id INT,
    fee_date DATE,
    fee_type VARCHAR(50),
    fee_amount DECIMAL(12,2),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATE,
    transaction_type VARCHAR(20),
    amount DECIMAL(12,2),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
