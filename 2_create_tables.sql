-- Create inu_neko_sales table with primary key
CREATE TABLE inu_neko_sales
(
    date DATE,
    order_number TEXT,
    customer_id TEXT,
    product_name TEXT,
    sku TEXT,
    price NUMERIC,
    quantity INT,
    product_category TEXT,
    product_line TEXT,
    sales NUMERIC
);

-- Set ownership of the tables to the postgres user
ALTER TABLE inu_neko_sales OWNER to postgres;

