create or alter procedure bronze.load_bronze as 
begin
select * from [BRONZE].[bronze.crm_prd_info]
select * from [BRONZE].[crm_cust_info]
select * from [BRONZE].[sales_details]
select * from [BRONZE].[erp_cust_az12]
select * from [BRONZE].[PX_CAT_G1V2]
select * from [BRONZE].[LOC_A101]
end 

use akashwarehouse
exec bronze.load_bronze
