

/*DATABASE AUTO SPARE PART MANAGEMENT
***************************************/


CREATE TABLE  type  (
   TYPE_ID  int(11)  ,
   TYPE  varchar(50)  
)  ;


INSERT INTO  type  ( TYPE_ID ,  TYPE ) VALUES
(1, 'Admin'),
(2, 'User');


CREATE TABLE  users  (
   ID  int(11)  ,
   EMPLOYEE_ID  int(11)  ,
   USERNAME  varchar(50)  ,
   PASSWORD  varchar(50)  ,
   TYPE_ID  int(11)  
)  ;


CREATE TABLE customer (
  CUST_ID int(11),
  FIRST_NAME varchar(50),
  LAST_NAME varchar(50),
  PHONE_NUMBER varchar(11)
);


CREATE TABLE employee (
  EMPLOYEE_ID int(11),
  FIRST_NAME varchar(50),
  LAST_NAME varchar(50),
  GENDER varchar(50),
  EMAIL varchar(100),
  PHONE_NUMBER varchar(11)
);


CREATE TABLE  manager  (
   FIRST_NAME  varchar(50),
   LAST_NAME  varchar(50),
   EMAIL  varchar(50),
   PHONE_NUMBER  varchar(11)
);


CREATE TABLE  product  (
   PRODUCT_ID  int(11),
   PRODUCT_CODE  varchar(20),
   NAME  varchar(50),
   DESCRIPTION  varchar(250)  ,
   PRICE  int(50)  ,
   CATEGORY_ID  int(11)  ,
   SUPPLIER_ID  int(11)  
)  ;


CREATE TABLE category (
  CATEGORY_ID int(11),
  CNAME  varchar(50) 
);


CREATE TABLE  supplier  (
   SUPPLIER_ID  int(11)  ,
   COMPANY_NAME  varchar(50)  ,
   LOCATION_ID  int(11)  ,
   PHONE_NUMBER  varchar(11)  
)  ;



/*Table structure for table  transaction */


CREATE TABLE  transaction  (
   TRANS_ID  int(50)  ,
   CUST_ID  int(11)  ,
   NUMOFITEMS  varchar(250)  ,
   SUBTOTAL  varchar(50)  ,
   CASH  varchar(250)  ,
   DATE  varchar(50)
)  ;


CREATE TABLE  transaction_details  (
   ID  int(11)  ,
   PRODUCTS  varchar(250)  ,
   QTY  varchar(250)  ,
   PRICE  varchar(250)  ,
   EMPLOYEE  varchar(250)  
     
)  ;



/*PRIMARY KEY CONSTRAINTS*/


ALTER TABLE  category 
  ADD PRIMARY KEY ( CATEGORY_ID );

ALTER TABLE  customer 
  ADD PRIMARY KEY ( CUST_ID );

ALTER TABLE  employee 
  ADD PRIMARY KEY ( EMPLOYEE_ID );
 
ALTER TABLE  product 
  ADD PRIMARY KEY ( PRODUCT_ID );

ALTER TABLE  supplier 
  ADD PRIMARY KEY ( SUPPLIER_ID );

ALTER TABLE  transaction 
  ADD PRIMARY KEY ( TRANS_ID );

ALTER TABLE  transaction_details 
  ADD PRIMARY KEY ( ID );

ALTER TABLE  type 
  ADD PRIMARY KEY ( TYPE_ID );

ALTER TABLE  users 
  ADD PRIMARY KEY ( ID );




/*AUTO_INCREMENT for table  category */

ALTER TABLE  users 
  MODIFY  ID  int(11)   AUTO_INCREMENT;

ALTER TABLE  category 
  MODIFY  CATEGORY_ID  int(11)   AUTO_INCREMENT;

ALTER TABLE  customer 
  MODIFY  CUST_ID  int(11)   AUTO_INCREMENT;

ALTER TABLE  employee 
  MODIFY  EMPLOYEE_ID  int(11)   AUTO_INCREMENT;

ALTER TABLE  supplier 
  MODIFY  SUPPLIER_ID  int(11)   AUTO_INCREMENT;

ALTER TABLE  product 
  MODIFY  PRODUCT_ID  int(11)   AUTO_INCREMENT;

ALTER TABLE  transaction 
  MODIFY  TRANS_ID  int(50)   AUTO_INCREMENT;

ALTER TABLE  transaction_details 
  MODIFY  ID  int(11)   AUTO_INCREMENT;



/*Constraints*/

ALTER TABLE  product 
  ADD CONSTRAINT  product_fk_1  FOREIGN KEY ( CATEGORY_ID ) REFERENCES  category  ( CATEGORY_ID ),
  ADD CONSTRAINT  product_fk_2  FOREIGN KEY ( SUPPLIER_ID ) REFERENCES  supplier  ( SUPPLIER_ID );


ALTER TABLE  transaction 
  ADD CONSTRAINT  transaction_fk_3  FOREIGN KEY ( CUST_ID ) REFERENCES  customer  ( CUST_ID );

ALTER TABLE  users 
  ADD CONSTRAINT  users_fk_3  FOREIGN KEY ( TYPE_ID ) REFERENCES  type  ( TYPE_ID ),
  ADD CONSTRAINT  users_fk_4  FOREIGN KEY ( EMPLOYEE_ID ) REFERENCES  employee  ( EMPLOYEE_ID );


INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`) VALUES
(1, 'Ashish', 'Kumar', 'Male', 'ashish@gmail.com', '1010101010'),
(2, 'PNV', 'Shravan', 'Male', 'pnvs@gmail.com', '1234567890');

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'Ashish', 'ashish123', 1),
(2, 2, 'pnv', '123456', 2);

