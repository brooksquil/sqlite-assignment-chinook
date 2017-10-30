--17) invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.
SELECT Invoice.InvoiceId,  
COUNT(Invoice.InvoiceId) as 'Invoice Line Items' 
FROM Invoice join InvoiceLine where Invoice.InvoiceId = InvoiceLine.InvoiceId 
GROUP BY Invoice.InvoiceId;