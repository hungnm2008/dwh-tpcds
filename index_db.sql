create index idx_web_Sales_1 on web_sales (ws_sold_date_sk,ws_item_sk);

create index idx_catalog_sales_1 on catalog_sales (cs_sold_date_sk,cs_item_sk);
create index idx_catalog_sales_2 on catalog_sales (cs_bill_customer_sk);


create index idx_store_sales_1 on store_sales (ss_sold_date_sk,ss_item_sk);
create index idx_store_sales_2 on store_sales (ss_customer_sk);
create index idx_store_sales_3 on store_sales (ss_store_sk);

create index idx_customer_2 on customer (c_customer_sk);
