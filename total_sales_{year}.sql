--9)  total_sales_{year}.sql: What are the respective total sales for each of those years?
--Total Sales 2009
SELECT sum(total) AS total_sales, strftime('%Y', InvoiceDate) AS year
FROM invoice
WHERE year IN ('2009', '2011')
GROUP BY year;