SET SERVEROUTPUT ON

CREATE VIEW Dolce_Vita AS 
    SELECT b.batch_id - (SELECT MIN(batch_id) - 1 FROM batch) AS Batch_Number, b.status AS Batch_Status,
        c.name AS Customer_Name, c.address AS Address,
        t.name AS Transport,
        box.weight AS Box_Weight, box.type AS Box_Type, box.price AS Box_Price, box.amount AS Box_Count,
        p.name AS Product_Name, p.price AS Product_Price, p.weight AS Product_Weight, p.shelf_life AS Shelf_Life, p.energy_value AS Food_Energy,
        nv.proteins AS Protein, nv.fats AS Fats, nv.carbohydrates AS Carbonohydrates, NVL(nv.cocoa, 0) AS Cocoa
    FROM batch b
        JOIN customer c ON b.customer_id = c.customer_id
        JOIN transport t ON b.transport_id = t.transport_id
        JOIN batch_content bc ON b.batch_id = bc.batch_id
        JOIN box ON bc.box_id = box.box_id
        JOIN product p ON box.product_id = p.product_id
        JOIN nutritional_value nv ON p.product_id = nv.product_id
    ORDER BY b.batch_id, box.box_id;

SET SERVEROUTPUT OFF