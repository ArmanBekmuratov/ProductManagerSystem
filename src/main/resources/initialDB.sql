DROP TABLE IF EXISTS login_info;
DROP TABLE IF EXISTS product;

CREATE TABLE login_info(
                           user_name varchar(100) not null,
                           password varchar(30) not null
);

INSERT INTO login_info VALUES('arman2105', '1');
INSERT INTO login_info VALUES('ara', ' ');


CREATE TABLE product(
                        product_id varchar(30) not null,
                        product_name varchar(30) not null,
                        product_category varchar(30) not null,
                        product_price int not null,
                        PRIMARY KEY (product_id));

INSERT INTO product VALUES('p001', 'iPhone', 'Mobile phones','1500');
INSERT INTO product VALUES('p002', 'Samsung', 'Mobile phones','1200');
INSERT INTO product VALUES('p003', 'Sony Erickson', 'Mobile phones','600');
INSERT INTO product VALUES('p004', 'Xiaomi', 'Mobile phones','800');
INSERT INTO product VALUES('p005', 'Siemens', 'Mobile phones','300');

