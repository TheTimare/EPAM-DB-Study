SET SERVEROUTPUT ON

INSERT INTO product VALUES ('1', '������� ������� � �������� �� ������������ ����', '0,2', '1830', '12', '3,83');
INSERT INTO product VALUES ('2', '������� ������� � �������� �� ���� ������ ���������', '0,2', '1830', '12', '3,83');
INSERT INTO product VALUES ('3', '�������� ������� � ���������� �������� � ���������� ���� � �������� ������', '0,1', '2160', '12', '1,25');
INSERT INTO product VALUES ('4', '������ �������� ������� � ���������� ��������� ������ �������� � ��������� �����', '0,1', '2260', '12', '3,12');
INSERT INTO product VALUES ('5', '���������� ����� �������� ��������� ���������', '0,2', '2310', '12', '5,94');
INSERT INTO product VALUES ('6', '�����-������� "����������"', '0,15', '1373', '12', '2,37');
INSERT INTO product VALUES ('7', '�������� ���������� ���������� ����-��', '1', '1670', '12', '4,01');
INSERT INTO product VALUES ('8', '�������� � �������� �������� �� ������ ��������', '1', '1616', '12', '3,92');
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

INSERT INTO box VALUES ('1', '10', '��� ���������������', '957,5', '5', '1');
INSERT INTO box VALUES ('2', '30', '��� ���������������', '10341', '18', '2');
INSERT INTO box VALUES ('3', '10', '��� ���������������', '2625', '21', '3');
INSERT INTO box VALUES ('4', '20', '��� ���������������', '14352', '23', '4');
INSERT INTO box VALUES ('5', '10', '��� ���������������', '3267', '11', '5');
INSERT INTO box VALUES ('6', '10', '��� ���������������', '4740', '30', '6');
INSERT INTO box VALUES ('7', '5', '��� �������', '501,25', '25', '7');
INSERT INTO box VALUES ('8', '10', '��� �������', '862,4', '22', '8');
INSERT INTO box VALUES ('9', '7,7', '��� ���������������', '6711', '30', '9');
INSERT INTO box VALUES ('10', '3,85', '��� ���������������', '5132', '40', '10');

INSERT INTO box VALUES ('11', '10', '��� ���������������', '4213', '22', '1');
INSERT INTO box VALUES ('12', '7,7', '��� ���������������', '4921,4', '22', '9');
INSERT INTO box VALUES ('13', '3,85', '��� ���������������', '2282,6', '22', '10');
INSERT INTO box VALUES ('14', '30', '��� ���������������', '12639', '22', '2');
INSERT INTO box VALUES ('15', '10', '��� ���������������', '2750', '22', '3');
INSERT INTO box VALUES ('16', '20', '��� ���������������', '13728', '22', '4');
INSERT INTO box VALUES ('17', '10', '��� ���������������', '6534', '22', '5');
INSERT INTO box VALUES ('18', '10', '��� ���������������', '3476', '22', '6');
INSERT INTO box VALUES ('19', '5', '��� �������', '441,1', '22', '7');
INSERT INTO box VALUES ('20', '10', '��� �������', '862,4', '22', '8');

INSERT INTO box VALUES ('21', '10', '��� ���������������', '2298', '12', '1');
INSERT INTO box VALUES ('22', '7,7', '��� ���������������', '7158,4', '32', '9');
INSERT INTO box VALUES ('23', '3,85', '��� ���������������', '5645,2', '44', '10');
INSERT INTO box VALUES ('24', '10', '��� ���������������', '2625', '21', '3');
INSERT INTO box VALUES ('25', '10', '��� ���������������', '6534', '22', '5');
INSERT INTO box VALUES ('26', '20', '��� ���������������', '4992', '8', '4');
INSERT INTO box VALUES ('27', '10', '��� �������', '862,4', '22', '8');

INSERT INTO box VALUES ('28', '20', '��� ���������������', '14352', '23', '4');
INSERT INTO box VALUES ('29', '10', '��� ���������������', '3267', '11', '5');
INSERT INTO box VALUES ('30', '10', '��� ���������������', '4741', '30', '6');
INSERT INTO box VALUES ('31', '30', '��� ���������������', '10341', '18', '2');
INSERT INTO box VALUES ('32', '10', '��� �������', '862,4', '22', '8');
INSERT INTO box VALUES ('33', '3,85', '��� ���������������', '5645,2', '44', '10');
INSERT INTO box VALUES ('34', '7,7', '��� ���������������', '4250,3', '19', '9');
INSERT INTO box VALUES ('35', '10', '��� ���������������', '11490', '60', '1');

INSERT INTO storage VALUES ('1', '2', '1');
INSERT INTO storage VALUES ('2', '1', '3');

INSERT INTO transport VALUES ('1', '����', '�����');
INSERT INTO transport VALUES ('2', '������������', '����������');

INSERT INTO batch(batch_id, customer_id, status, transport_id) VALUES ('1', '1', '�����������', '1');
INSERT INTO batch(batch_id, customer_id, status, transport_id) VALUES ('2', '2', '������������', '2');
INSERT INTO batch(batch_id, customer_id, status, transport_id) VALUES ('3', '3', '������������', '1');
INSERT INTO batch(batch_id, customer_id, status, transport_id) VALUES ('4', '4', '����������', '2');

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

INSERT INTO customer VALUES ('1', '�������', '�. �����, ��. ���������� �.131, ���. 1');
INSERT INTO customer VALUES ('2', '�������', '�. �����, ��. ���������� �.133, ���. 1');
INSERT INTO customer VALUES ('3', '������', '�. �����, ��. �����������, 8');
INSERT INTO customer VALUES ('4', '������', '�. �������, ��. III ��������������, 5');

SET SERVEROUTPUT OFF