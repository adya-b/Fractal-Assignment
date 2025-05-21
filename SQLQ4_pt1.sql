CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50)
);

INSERT INTO Customer (Customer_ID, Customer_Name)
VALUES 
    (1, 'aa'),
    (2, 'bb'),
    (3, 'cc'),
    (4, 'ff'),
    (5, 'ee');

INSERT INTO Customer (Customer_ID, Customer_Name)
VALUES 
    (9, 'new_customer9'),
    (10, 'new_customer10');

CREATE TABLE Invoice (
    Invoice_ID INT PRIMARY KEY,
    Customer INT,
    Product_Name VARCHAR(50),
    FOREIGN KEY (Customer) REFERENCES Customer(Customer_ID)
);

INSERT INTO Invoice (Invoice_ID, Customer, Product_Name)
VALUES 
    (1111, 1, 'qq'),
    (1112, 1, 'ww'),
    (1113, 10, 'pp'),
    (1114, 2, 'lkl'),
    (1115, 2, 'lkl'),
    (1116, 3, 'asas'),
    (1117, 9, 'wef'),
    (1118, NULL, 'vxh');

SELECT * FROM Customer;
SELECT * FROM Invoice;
