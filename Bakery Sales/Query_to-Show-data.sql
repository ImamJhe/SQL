-- Show all data in table bakery sales
SELECT * 
FROM [Bakery Sales]

-- Show top 5 article by total quantity
SELECT TOP 5 article, SUM(Quantity) total_quantity, SUM(total_price) total_price
FROM [Bakery sales]
GROUP BY article
ORDER BY total_quantity DESC;

-- Show top 5 article by total price
SELECT TOP 5 article, SUM(total_price) total_price, SUM(Quantity) total_quantity
FROM [Bakery sales]
GROUP BY article
ORDER BY total_price DESC;

-- Group and count article
SELECT article, COUNT(article) AS article_count
FROM [Bakery sales]
GROUP BY article
ORDER BY 2 DESC;

-- Show the ticket_number with ticket_number count and Total quantity
SELECT ticket_number, COUNT(ticket_number) ticket_number_count, SUM(Quantity) total_quantity
FROM [Bakery sales]
GROUP BY ticket_number
ORDER BY 3 DESC;