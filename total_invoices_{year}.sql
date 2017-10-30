--8) total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?
    --InvoiceDate
--2009 # of Total Invoices
SELECT
COUNT(*)
FROM
Invoice
WHERE 
InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31';
--2011 Total # of Invoices
SELECT
COUNT(*)
FROM
Invoice
WHERE 
InvoiceDate BETWEEN '2011-01-01' AND '2011-12-31';