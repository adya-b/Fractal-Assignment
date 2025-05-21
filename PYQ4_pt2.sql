CREATE TABLE CUSTOMER1 (
    Customer_ID INT,
    Customer_Name VARCHAR(50)
);

CREATE TABLE CUSTOMER2 (
    Customer INT,
    Customer_Name VARCHAR(50)
);

INSERT INTO CUSTOMER1 (Customer_ID, Customer_Name)
VALUES 
    (1, 'aa'),
    (2, 'bb'),
    (3, 'cc'),
    (5, 'ee');

INSERT INTO CUSTOMER2 (Customer, Customer_Name)
VALUES 
    (1, 'aa'),
    (4, 'ff'),
    (5, 'ee');

SELECT 
    C1.Customer_ID,    
    C1.Customer_Name   
FROM 
    CUSTOMER1 C1      
LEFT JOIN 
    CUSTOMER2 C2       
    ON C1.Customer_ID = C2.Customer
WHERE 
    C2.Customer IS NULL;  