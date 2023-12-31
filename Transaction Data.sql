CREATE TABLE customers
(
    customer_id bigint,
    first_name character varying(255),
    last_name_id bigint,
    last_name character varying(255),
    first_purchase_dt date,
    last_purchase_dt date,
    days_between_first_last_purchase_dates integer,
    number_of_transactions integer
)
;


CREATE TABLE products
(
    product_id integer,
    description character varying(255),
    review_count bigint,
    price numeric(10,2),
    amazon_url character varying(255),
    category character varying(255),
    console_platform character varying(255)
)
;


CREATE TABLE stores
(
    store_number integer,
    description character varying(255),
    address character varying(255),
    address_2 character varying(255),
    city character varying(255),
    state_abv character(2),
    zip_code character varying(5)
)
;


CREATE TABLE transaction_items
(
    transaction_item_id bigint,
    transaction_id bigint,
    product_id integer
)
;


CREATE TABLE transactions
(
    customer_id bigint,
    trans_dt date,
    transaction_id bigint,
    items_in_trans integer,
    store_id bigint
)
;



CREATE TABLE daily_sales_summary
(
    trans_dt date, 
    total_sales numeric(15,2),
    total_sales_t30d numeric(15,2)
)
;
