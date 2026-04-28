--#################################################################################
--#################CUSTOMER INFORMATION DATA PROFILING SCRIPT######################
--#################################################################################
-- DATA EXPLORING 
SELECT TOP (1000) [cst_id]
      ,[cst_key]
      ,[cst_firstname]
      ,[cst_lastname]
      ,[cst_marital_status]
      ,[cst_gndr]
      ,[cst_create_date]
  FROM [BusinessDW].[Bronze].[crm_cust_info]

SELECT TOP 100 * FROM Bronze.crm_prd_info ;
SELECT TOP 100 * FROM Bronze.crm_sales_details ;

SELECT TOP 100 * FROM Bronze.erp_cust_az12 ;
SELECT TOP 100 * FROM Bronze.erp_loc_a101 ;
SELECT TOP 100 * FROM Bronze.erp_px_cat_g1v2 ;
--=================================================================================
--===================CSUTOEMR ID PROFILING CHECKS==================================
--=================================================================================
-- DUPLICATE CHECK IN CUSTOEMR ID
SELECT 
    cst_id,
    COUNT(cst_id) as customer_id_count
FROM Bronze.crm_cust_info 
GROUP BY cst_id 
HAVING COUNT(*) > 1 ;

-- NULL CHECK IN CUSTOMER ID 
SELECT 
    *
FROM Bronze.crm_cust_info
WHERE cst_id IS NULL ;
--=================================================================================
--===================CSUTOEMR FIRST NAME PROFILING CHECKS==========================
--=================================================================================

-- NULL CHECK IN CUSTOMER FIRST NAME
SELECT 
    * 
FROM Bronze.crm_cust_info
WHERE cst_firstname IS NULL ;