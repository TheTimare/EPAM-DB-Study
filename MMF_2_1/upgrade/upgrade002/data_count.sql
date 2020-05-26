SET SERVEROUTPUT ON;

WITH t AS (
    SELECT 'product' AS tablename, COUNT(*) data_num
    FROM product group by 'product'
    
    UNION ALL
    
    SELECT 'box' AS, COUNT(*) AS data_num
    FROM box group by 'box'
    
    UNION ALL
    
    SELECT 'storage', COUNT(*) AS data_num
    FROM storage group by 'storage'
    
    UNION ALL
    
    SELECT 'transport', COUNT(*) AS data_num
    FROM transport group by 'transport'
    
    UNION ALL
    
    SELECT 'batch', COUNT(*) AS data_num
    FROM batch group by 'batch'
    
    UNION ALL
    
    SELECT 'batch_content', COUNT(*) AS data_num
    FROM batch_content group by 'batch_content'
    
    UNION ALL
    
    SELECT 'customer', COUNT(*) AS data_num
    FROM customer group by 'customer'
    
    UNION ALL
    
    SELECT 'nutritional_value', COUNT(*) AS data_num
    FROM nutritional_value group by 'nutritional_value'
    
    UNION ALL
    
    SELECT 'composition', COUNT(*) AS data_num
    FROM composition group by 'composition'
)
SELECT t.tablename || ' - number of values: ' || t.data_num AS tables
FROM t;

SET SERVEROUTPUT OFF;