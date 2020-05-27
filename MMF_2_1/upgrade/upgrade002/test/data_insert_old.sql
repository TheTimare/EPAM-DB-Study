SET SERVEROUTPUT ON

INSERT INTO product VALUES ('1', 'Горький шоколад с начинкой из абрикосового пюре', '0,2', '1830', '12', '3,83');
INSERT INTO product VALUES ('2', 'Горький шоколад с начинкой из пюре черной смородины', '0,2', '1830', '12', '3,83');
INSERT INTO product VALUES ('3', 'Молочный шоколад с изысканной начинкой с клубничным пюре и молочным кремом', '0,1', '2160', '12', '1,25');
INSERT INTO product VALUES ('4', 'Нежный молочный шоколад с ароматными кусочками свежей клубники и воздушным рисом', '0,1', '2260', '12', '3,12');
INSERT INTO product VALUES ('5', 'Подарочный набор шоколада «Беларусь синеокая»', '0,2', '2310', '12', '5,94');
INSERT INTO product VALUES ('6', 'Какао-порошок "Коммунарка"', '0,15', '1373', '12', '2,37');
INSERT INTO product VALUES ('7', 'Карамель леденцовая «Зубастики» кола-ла', '1', '1670', '12', '4,01');
INSERT INTO product VALUES ('8', 'Карамель с молочной начинкой со вкусом пломбира', '1', '1616', '12', '3,92');
INSERT INTO product VALUES ('9', 'Maya Legends', '0,77', '2282', '12', '22,37');
INSERT INTO product VALUES ('10', 'Maya Legends', '0,38', '2282', '12', '12,83');

INSERT INTO nutritional_value VALUES ('1', '19', '3', '63', '56');
INSERT INTO nutritional_value VALUES ('2', '19', '3', '63', '56');
INSERT INTO nutritional_value VALUES ('3', '29', '3,5', '60', null);
INSERT INTO nutritional_value VALUES ('4', '33', '5', '56', null);
INSERT INTO nutritional_value VALUES ('5', '36', '5,5', '52', null);
INSERT INTO nutritional_value VALUES ('6', '12', '25,6', '29,6', '100');
INSERT INTO nutritional_value VALUES ('7', '0,1', '0', '98', null);
INSERT INTO nutritional_value VALUES ('8', '1,1', '0,4', '92,6', null);
INSERT INTO nutritional_value VALUES ('9', '32,9', '5,9', '55,9', null);
INSERT INTO nutritional_value VALUES ('10', '32,9', '5,9', '55,9', null);

INSERT INTO box VALUES ('1', '10', 'Для транспортировки', '957,5', '5', '1');
INSERT INTO box VALUES ('2', '30', 'Для транспортировки', '10341', '18', '2');
INSERT INTO box VALUES ('3', '10', 'Для транспортировки', '2625', '21', '3');
INSERT INTO box VALUES ('4', '20', 'Для транспортировки', '14352', '23', '4');
INSERT INTO box VALUES ('5', '10', 'Для транспортировки', '3267', '11', '5');
INSERT INTO box VALUES ('6', '10', 'Для транспортировки', '4740', '30', '6');
INSERT INTO box VALUES ('7', '5', 'Для продажи', '501,25', '25', '7');
INSERT INTO box VALUES ('8', '10', 'Для продажи', '862,4', '22', '8');
INSERT INTO box VALUES ('9', '7,7', 'Для транспортировки', '6711', '30', '9');
INSERT INTO box VALUES ('10', '3,85', 'Для транспортировки', '5132', '40', '10');

INSERT INTO box VALUES ('11', '10', 'Для транспортировки', '4213', '22', '1');
INSERT INTO box VALUES ('12', '7,7', 'Для транспортировки', '4921,4', '22', '9');
INSERT INTO box VALUES ('13', '3,85', 'Для транспортировки', '2282,6', '22', '10');
INSERT INTO box VALUES ('14', '30', 'Для транспортировки', '12639', '22', '2');
INSERT INTO box VALUES ('15', '10', 'Для транспортировки', '2750', '22', '3');
INSERT INTO box VALUES ('16', '20', 'Для транспортировки', '13728', '22', '4');
INSERT INTO box VALUES ('17', '10', 'Для транспортировки', '6534', '22', '5');
INSERT INTO box VALUES ('18', '10', 'Для транспортировки', '3476', '22', '6');
INSERT INTO box VALUES ('19', '5', 'Для продажи', '441,1', '22', '7');
INSERT INTO box VALUES ('20', '10', 'Для продажи', '862,4', '22', '8');

INSERT INTO box VALUES ('21', '10', 'Для транспортировки', '2298', '12', '1');
INSERT INTO box VALUES ('22', '7,7', 'Для транспортировки', '7158,4', '32', '9');
INSERT INTO box VALUES ('23', '3,85', 'Для транспортировки', '5645,2', '44', '10');
INSERT INTO box VALUES ('24', '10', 'Для транспортировки', '2625', '21', '3');
INSERT INTO box VALUES ('25', '10', 'Для транспортировки', '6534', '22', '5');
INSERT INTO box VALUES ('26', '20', 'Для транспортировки', '4992', '8', '4');
INSERT INTO box VALUES ('27', '10', 'Для продажи', '862,4', '22', '8');

INSERT INTO box VALUES ('28', '20', 'Для транспортировки', '14352', '23', '4');
INSERT INTO box VALUES ('29', '10', 'Для транспортировки', '3267', '11', '5');
INSERT INTO box VALUES ('30', '10', 'Для транспортировки', '4741', '30', '6');
INSERT INTO box VALUES ('31', '30', 'Для транспортировки', '10341', '18', '2');
INSERT INTO box VALUES ('32', '10', 'Для продажи', '862,4', '22', '8');
INSERT INTO box VALUES ('33', '3,85', 'Для транспортировки', '5645,2', '44', '10');
INSERT INTO box VALUES ('34', '7,7', 'Для транспортировки', '4250,3', '19', '9');
INSERT INTO box VALUES ('35', '10', 'Для транспортировки', '11490', '60', '1');

INSERT INTO storage VALUES ('1', '2', '1');
INSERT INTO storage VALUES ('2', '1', '3');

INSERT INTO transport VALUES ('1', 'Свой', 'Любой');
INSERT INTO transport VALUES ('2', 'Арендованный', 'Грузовичок');

INSERT INTO customer VALUES ('1', 'Евроопт', 'г. Минск, ул. Слободская д.131, пом. 1');
INSERT INTO customer VALUES ('2', 'Евроопт', 'г. Минск, ул. Слободская д.133, пом. 1');
INSERT INTO customer VALUES ('3', 'Корона', 'г. Минск, ул. Денисовская, 8');
INSERT INTO customer VALUES ('4', 'Корона', 'г. Борисов, ул. III Интернационала, 5');

INSERT INTO batch(batch_id, customer_id, status, transport_id) VALUES ('1', '1', 'Формируется', '1');
INSERT INTO batch(batch_id, customer_id, status, transport_id) VALUES ('2', '2', 'Сформировано', '2');
INSERT INTO batch(batch_id, customer_id, status, transport_id) VALUES ('3', '3', 'Доставляется', '1');
INSERT INTO batch(batch_id, customer_id, status, transport_id) VALUES ('4', '4', 'Доставлено', '2');

INSERT INTO batch_content VALUES ('1', '1');
INSERT INTO batch_content VALUES ('1', '2');
INSERT INTO batch_content VALUES ('1', '3');
INSERT INTO batch_content VALUES ('1', '4');
INSERT INTO batch_content VALUES ('1', '5');
INSERT INTO batch_content VALUES ('1', '6');
INSERT INTO batch_content VALUES ('1', '7');
INSERT INTO batch_content VALUES ('1', '8');
INSERT INTO batch_content VALUES ('1', '9');
INSERT INTO batch_content VALUES ('1', '10');

INSERT INTO batch_content VALUES ('2', '11');
INSERT INTO batch_content VALUES ('2', '12');
INSERT INTO batch_content VALUES ('2', '13');
INSERT INTO batch_content VALUES ('2', '14');
INSERT INTO batch_content VALUES ('2', '15');
INSERT INTO batch_content VALUES ('2', '16');
INSERT INTO batch_content VALUES ('2', '17');
INSERT INTO batch_content VALUES ('2', '18');
INSERT INTO batch_content VALUES ('2', '19');
INSERT INTO batch_content VALUES ('2', '20');

INSERT INTO batch_content VALUES ('3', '21');
INSERT INTO batch_content VALUES ('3', '22');
INSERT INTO batch_content VALUES ('3', '23');
INSERT INTO batch_content VALUES ('3', '24');
INSERT INTO batch_content VALUES ('3', '25');
INSERT INTO batch_content VALUES ('3', '26');
INSERT INTO batch_content VALUES ('3', '27');

INSERT INTO batch_content VALUES ('4', '28');
INSERT INTO batch_content VALUES ('4', '29');
INSERT INTO batch_content VALUES ('4', '30');
INSERT INTO batch_content VALUES ('4', '31');
INSERT INTO batch_content VALUES ('4', '32');
INSERT INTO batch_content VALUES ('4', '33');
INSERT INTO batch_content VALUES ('4', '34');
INSERT INTO batch_content VALUES ('4', '35');

SET SERVEROUTPUT OFF