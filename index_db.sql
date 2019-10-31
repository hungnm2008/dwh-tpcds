create index idx_web_Sales_1 on web_sales (ws_sold_date_sk);
create index idx_web_Sales_2 on web_sales (ws_item_sk);
create index idx_web_Sales_3 on web_sales (ws_bill_addr_sk);

create index idx_catalog_sales_1 on catalog_sales (cs_sold_date_sk);
create index idx_catalog_sales_3 on catalog_sales (cs_item_sk);
create index idx_catalog_sales_2 on catalog_sales (cs_bill_customer_sk);


create index idx_store_sales_1 on store_sales (ss_sold_date_sk);
create index idx_store_sales_2 on store_sales (ss_customer_sk);
create index idx_store_sales_3 on store_sales (ss_store_sk);
create index idx_store_sales_4 on store_sales (ss_item_sk);

create index idx_customer_2 on customer (c_customer_sk);

create index idx_date_dim_1 on date_dim (d_year);
create index idx_date_dim_2 on date_dim (d_date);
create index idx_date_dim_3 on date_dim (d_moy);

create index idx_inventory_dim_1 on inventory (inv_warehouse_sk);
create index idx_inventory_dim_2 on inventory (inv_date_sk);
create index idx_inventory_dim_3 on inventory (inv_item_sk);
