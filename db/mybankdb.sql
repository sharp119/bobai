CREATE DATABASE myBankDB;

use  myBankDB;

show databases;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    Zip VARCHAR(10) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

show tables;

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    AccountType VARCHAR(20) NOT NULL,
    Balance DECIMAL(18,2) NOT NULL,
    OpenDate DATE NOT NULL,
    CONSTRAINT FK_Accounts_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT NOT NULL,
    TransactionType VARCHAR(20) NOT NULL,
    Amount DECIMAL(18,2) NOT NULL,
    TransactionDate DATE NOT NULL,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Address, City, State, Zip, Phone, Email)
VALUES
  (1, 'John', 'Doe', '123 Main St', 'Anytown', 'CA', '12345', '555-1234', 'john.doe@example.com'),
  (2, 'Jane', 'Smith', '456 Oak Rd', 'Somewhere', 'NY', '67890', '555-5678', 'jane.smith@example.com'),
  (3, 'Michael', 'Johnson', '789 Elm St', 'Elsewhere', 'TX', '24680', '555-9012', 'michael.johnson@example.com');
  

INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance, OpenDate)
VALUES
  (1001, 1, 'Checking', 5000.00, '2022-01-01'),
  (1002, 1, 'Savings', 10000.00, '2022-01-01'),
  (2001, 2, 'Checking', 2500.00, '2023-03-15'),
  (3001, 3, 'Savings', 15000.00, '2021-11-30');
  
  
INSERT INTO Transactions (TransactionID, AccountID, TransactionType, Amount, TransactionDate)
VALUES
  (1, 1001, 'Deposit', 1000.00, '2022-01-02'),
  (2, 1001, 'Withdrawal', 500.00, '2022-01-15'),
  (3, 1002, 'Deposit', 2000.00, '2022-01-03'),
  (4, 2001, 'Deposit', 1000.00, '2023-03-16'),
  (5, 3001, 'Withdrawal', 2000.00, '2021-12-01');
  
  show tables;






