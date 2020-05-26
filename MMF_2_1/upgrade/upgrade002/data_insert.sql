SET SERVEROUTPUT ON

INSERT INTO product(name, weight, energy_value, shelf_life, price)
	SELECT DISTINCT product_name, product_weight, food_energy, shelf_life, product_price
	FROM RAW_DATA;
	
INSERT INTO nutritional_value(fats, proteins, carbohydrates, cocoa, product_id)
	SELECT DISTINCT fats, protein, carbonohydrates, cocoa, (
			SELECT p.product_id
			FROM product p
			WHERE p.name = product_name AND p.weight = product_weight
		) AS id
	FROM RAW_DATA;
	
INSERT INTO box(weight, type, price, amount, product_id)
	SELECT DISTINCT box_weight, box_type, box_price, box_count, (
			SELECT p.product_id
			FROM product p
			WHERE p.name = product_name AND p.weight = product_weight
		)
	FROM RAW_DATA;

INSERT INTO transport(name)
	SELECT DISTINCT transport
	FROM RAW_DATA;
	
INSERT INTO customer(name, address)
	SELECT DISTINCT customer_name, address
	FROM RAW_DATA;

INSERT INTO batch(status, transport_id, customer_id)
	SELECT DISTINCT r.batch_status, (
        SELECT t.transport_id
        FROM transport t
        WHERE t.name = r.transport
    ), (
        SELECT c.customer_id
        FROM customer c
        WHERE c.name = r.customer_name 
            AND c.address = r.address
    )
	FROM RAW_DATA r
    ORDER BY r.batch_status DESC;
	
INSERT INTO batch_content(batch_id, box_id)
	SELECT (
			SELECT b.batch_id
			FROM batch b
			WHERE b.customer_id = ( 
					SELECT c.customer_id
					FROM customer c
					WHERE c.name = r.customer_name 
						AND c.address = r.address
				) 
		), ( 
			SELECT b.box_id
			FROM box b
			WHERE b.weight = r.box_weight
				AND b.type = r.box_type
				AND b.price = r.box_price
				AND b.amount = r.box_count
				AND b.product_id = (
						SELECT p.product_id
						FROM product p
						WHERE p.name = r.product_name AND p.weight = r.product_weight
					)
		)
	FROM RAW_DATA r;

SET SERVEROUTPUT OFF