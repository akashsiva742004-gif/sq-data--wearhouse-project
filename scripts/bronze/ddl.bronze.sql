f object_id ('bronze.crm_cust_info' , 'u') is not null 
drop table bronze.crm_cust_info
use akashwarehouse
create table bronze.crm_cust_info(
cst_id int ,
cst_key nvarchar (50),
cst_firstname nvarchar (50),
cst_lastname nvarchar(50),
cst_material_status nvarchar(50),
cst_gndr nvarchar (50),
cst_create_date date
);
if object_id ('bronze.crm_prd_info' , 'u') is not null 
drop table bronze.crm_prd_info
create table bronze.crm_prd_info(
prd_id nvarchar (50),
prd_key nvarchar (50),
prd_nm nvarchar (50),
prd_cost nvarchar (50),
prd_line nvarchar(50),
prd_start_date nvarchar(50) ,
prd_end_date nvarchar(50)
);
if object_id ('bronze.crm_sales_details' , 'u') is not null 
drop table bronze.crm_sales_details
create table bronze.crm_sales_details(
sls_ord_num int ,
sls_prd_key nvarchar (50),
sls_cust_id int,
sls_order_dt int ,
sls_ship_dt int,
sls_sales nvarchar (50),
sls_quantity int,
sls_price nvarchar (50),
);
if object_id ('bronze.erp_cust_az12' , 'u') is not null 
drop table bronze.erp_cust_az12
create table bronze.erp_cust_az12(
cid nvarchar (50),
bdate date,
gen nvarchar (50)
)
if object_id ('bronze.erp_loc_a101' , 'u') is not null 
drop table bronze.erp_loc_a101
create table bronze.erp_loc_a101(
cid int ,
cntry nvarchar (50)
)
if object_id ('bronze.erp_PX_CAT_G1V2' , 'u') is not null 
drop table bronze.erp_PX_CAT_G1V2
create table bronze.erp_PX_CAT_G1V2(
id nvarchar (50),
cat nvarchar (50),
subcat nvarchar (50),
maintenance nvarchar (50)
)
