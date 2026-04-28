
-- DUPLICATE CHECK IN CUSTOEMR ID
SELECT 
    cst_id,
    COUNT(cst_id) as custoemr_id
FROM Bronze.crm_cust_info 
GROUP BY cst_id 
HAVING COUNT(*) > 1 ;

-- NULL CHECK IN CUSTOMER ID 
SELECT 
    *
FROM Bronze.crm_cust_info
WHERE cst_id IS NULL ;

