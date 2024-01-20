CREATE TABLE ShoeInfo (
    ShoeID   INTEGER PRIMARY KEY
                     UNIQUE
                     NOT NULL,
    Brand    TEXT    NOT NULL,
    ShoeName TEXT    NOT NULL,
    Gender   TEXT    NOT NULL,
    Color    TEXT    NOT NULL,
    Price    NUMERIC NOT NULL,
    Quantity INTEGER
);


INSERT INTO ShoeInfo (ShoeId, Brand, ShoeName, Gender, Color, Price, Quantity)
VALUES ('1', 'Nike', 'AirMax 95', 'M', 'Black/White', '119.99', '25');

INSERT INTO ShoeInfo (ShoeId, Brand, ShoeName, Gender, Color, Price, Quantity)
VALUES ('2', 'Nike', 'AirMax 95', 'W', 'White/Gold', '114.99', '18');

INSERT INTO ShoeInfo (ShoeId, Brand, ShoeName, Gender, Color, Price, Quantity)
VALUES ('3', 'Adidas', 'Ultraboost 3.0', 'M', 'White', '132.99', '10');

INSERT INTO ShoeInfo (ShoeId, Brand, ShoeName, Gender, Color, Price, Quantity)
VALUES ('4', 'Adidas', 'Samba', 'M', 'Black', '99.99', '15');

INSERT INTO ShoeInfo (ShoeId, Brand, ShoeName, Gender, Color, Price, Quantity)
VALUES ('5', 'New Balance', '574', 'M', 'Black/White', '79.99', '23');

INSERT INTO ShoeInfo (ShoeId, Brand, ShoeName, Gender, Color, Price, Quantity)
VALUES ('6', 'Nike Jordan', 'Jordan 4', 'M', 'White/Red', '249.99', '5');

INSERT INTO ShoeInfo (ShoeId, Brand, ShoeName, Gender, Color, Price, Quantity)
VALUES ('7', 'Nike Jordan', 'Jordan 1', 'W', 'Blue/White', '325.99', '8');

INSERT INTO ShoeInfo (ShoeId, Brand, ShoeName, Gender, Color, Price, Quantity)
VALUES ('8', 'Nike Jordan', 'Jordan 1', 'M', 'Blue/Black', '189.99', '15');

INSERT INTO ShoeInfo (ShoeId, Brand, ShoeName, Gender, Color, Price, Quantity)
VALUES ('9', 'Adidas', 'NMD', 'W', 'Green/White', '129.99', '25');

INSERT INTO ShoeInfo (ShoeId, Brand, ShoeName, Gender, Color, Price, Quantity)
VALUES ('10', 'Adidas', 'NMD', 'M', 'Green/White', '129.99', '25');

INSERT INTO ShoeInfo (ShoeId, Brand, ShoeName, Gender, Color, Price, Quantity)
VALUES ('11', 'Adidas', 'NMD', 'M', 'Blue/White', '115.99', '30');


SELECT * FROM ShoeInfo
WHERE Brand = "Adidas";