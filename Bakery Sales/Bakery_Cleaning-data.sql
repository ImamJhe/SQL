-- Delete Null data from Quantity
DELETE FROM [Bakery sales]
WHERE Quantity IS NULL

-- Clean data unit_price
UPDATE [Bakery sales]
SET unit_price = REPLACE(unit_price, '€', '')

-- Change the ',' from unit_price to '.' that will change the type to float
UPDATE [Bakery sales]
SET unit_price = REPLACE(unit_price,',', '.')

-- Change the data type of unit_price
ALTER TABLE [Bakery sales]
ALTER COLUMN unit_price FLOAT;

-- Add new column total_price
ALTER TABLE [Bakery Sales]
ADD total_price DECIMAL (10,2)

-- Update column total_price with Quantity*unit_price
UPDATE [Bakery Sales]
SET total_price = Quantity * unit_price

-- Delete data '.' from article
DELETE FROM [Bakery sales]
WHERE article = '.'