
DROP TABLE CW������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW�������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW������ CASCADE CONSTRAINTS PURGE;

DROP TABLE CW������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW������ CASCADE CONSTRAINTS PURGE;

DROP TABLE CW������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW���������������_��� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW��������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW�������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW��������_���������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW������ CASCADE CONSTRAINTS PURGE;

DROP TABLE CW������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW������ CASCADE CONSTRAINTS PURGE;

DROP TABLE CW���������_������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW���_������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW���������_������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW���_��������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW����������������_��� CASCADE CONSTRAINTS PURGE;

DROP VIEW ������������� CASCADE CONSTRAINTS;

DROP TABLE CW������� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW��� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW������������ CASCADE CONSTRAINTS PURGE;

DROP TABLE CW��� CASCADE CONSTRAINTS PURGE;

DROP TABLE CW��������� CASCADE CONSTRAINTS PURGE;

CREATE TABLE CW��������
(
	�����������          NUMBER(4,0) NOT NULL ,
	���_���������        VARCHAR2(12) NOT NULL 
);

CREATE UNIQUE INDEX XPK�������� ON CW��������
(���_���������   ASC);

ALTER TABLE CW��������
	ADD CONSTRAINT  XPK�������� PRIMARY KEY (���_���������);

ALTER TABLE CW��������
	ADD CONSTRAINT  ��������_�����_65300351 CHECK  (SUBSTR(���_���������, 1, 8) = '��������');

ALTER TABLE CW��������
	MODIFY ����������� CONSTRAINT  �����_965469913 CHECK (����������� >= 0);

CREATE TABLE CW�������
(
	�����_�������        NUMBER(3,0) NOT NULL ,
	��������_�������     VARCHAR2(14) NOT NULL ,
	��������             VARCHAR2(15) NOT NULL ,
	������               VARCHAR2(22) NOT NULL 
);

CREATE UNIQUE INDEX XPK������� ON CW�������
(�����_�������   ASC);

ALTER TABLE CW�������
	ADD CONSTRAINT  XPK������� PRIMARY KEY (�����_�������);

CREATE UNIQUE INDEX XAK2������� ON CW�������
(��������_�������   ASC);

ALTER TABLE CW�������
ADD CONSTRAINT  XAK2������� UNIQUE (��������_�������);

CREATE UNIQUE INDEX XAK1������� ON CW�������
(��������   ASC);

ALTER TABLE CW�������
	ADD CONSTRAINT  ������_����_�����_1274688691 CHECK  (SUBSTR(������, 1, 6) = '������');

ALTER TABLE CW�������
	MODIFY �����_������� CONSTRAINT  �����_�������_1200055689 CHECK (�����_������� >= 1);

CREATE INDEX XIE3������� ON CW�������
(������   ASC);

CREATE TABLE CW���_�������
(
	�����_����_�������   VARCHAR2(4) NOT NULL ,
	�����_���������_������� VARCHAR2(3) NOT NULL ,
	��������_����_������� VARCHAR2(18) NOT NULL 
);

CREATE UNIQUE INDEX XPK���_������� ON CW���_�������
(�����_����_�������   ASC);

ALTER TABLE CW���_�������
	ADD CONSTRAINT  XPK���_������� PRIMARY KEY (�����_����_�������);

CREATE UNIQUE INDEX XAK1���_������� ON CW���_�������
(��������_����_�������   ASC);

ALTER TABLE CW���_�������
ADD CONSTRAINT  XAK1���_������� UNIQUE (��������_����_�������);

CREATE INDEX XIE1���_������� ON CW���_�������
(�����_���������_�������   ASC);

CREATE TABLE CW���������������_���
(
	���_����������������_���� VARCHAR2(13) NOT NULL ,
	�����_����           VARCHAR2(4) NOT NULL 
);

CREATE UNIQUE INDEX XPK���������������_��� ON CW���������������_���
(�����_����   ASC);

ALTER TABLE CW���������������_���
	ADD CONSTRAINT  XPK���������������_��� PRIMARY KEY (�����_����);

ALTER TABLE CW���������������_���
	ADD CONSTRAINT  ���������_�����_1592414896 CHECK  (SUBSTR(�����_����, 1, 1) = '�'
);

ALTER TABLE CW���������������_���
	MODIFY ���_����������������_���� CONSTRAINT  ���������_���_1656618676 CHECK (���_����������������_���� IN ('���������', '�������������'));

ALTER TABLE CW���������������_���
	MODIFY �����_���� CONSTRAINT  �����_����_478363869 CHECK ((SUBSTR(�����_����, 1, 1) = '�'
OR SUBSTR(�����_����, 1, 1) = '�')
AND LENGTH(�����_����) = 4
);

CREATE TABLE CW��������_����������
(
	����������������     NUMBER(5,0) NOT NULL ,
	���_���������        VARCHAR2(12) NOT NULL 
);

CREATE UNIQUE INDEX XPK��������_���������� ON CW��������_����������
(���_���������   ASC);

ALTER TABLE CW��������_����������
	ADD CONSTRAINT  XPK��������_���������� PRIMARY KEY (���_���������);

ALTER TABLE CW��������_����������
	ADD CONSTRAINT  ��������_�����_1823080338 CHECK  (SUBSTR(���_���������, 1, 8) = '��������');

ALTER TABLE CW��������_����������
	MODIFY ���������������� CONSTRAINT  �����_1841523636 CHECK (���������������� >= 0);

CREATE TABLE CW������
(
	������               DATE NOT NULL ,
	�����                DATE NULL ,
	����_����������_����� VARCHAR2(18) NOT NULL ,
	�����_����������     NUMBER(6,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK������ ON CW������
(������   ASC,�����_����������   ASC);

ALTER TABLE CW������
	ADD CONSTRAINT  XPK������ PRIMARY KEY (������,�����_����������);

ALTER TABLE CW������
	ADD CONSTRAINT  ������������_���_1004688284 CHECK  (������ < �����);

ALTER TABLE CW������
	MODIFY ����_����������_����� CONSTRAINT  ���������_����_1107733670 CHECK (����_����������_����� IN ('������', '�������� ������', '����������� ������', '������������'));

CREATE INDEX XIE1������ ON CW������
(�����_����������   ASC);

CREATE TABLE CW���
(
	���_����������       VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK��� ON CW���
(���_����������   ASC);

ALTER TABLE CW���
	ADD CONSTRAINT  XPK��� PRIMARY KEY (���_����������);

ALTER TABLE CW���
	ADD CONSTRAINT  ���_�����_1970182668 CHECK  (SUBSTR(���_����������, 1, 1) = '�');

CREATE TABLE CW�������
(
	�������������_�������� VARCHAR2(16) NOT NULL ,
	���_����������       VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK������� ON CW�������
(���_����������   ASC);

ALTER TABLE CW�������
	ADD CONSTRAINT  XPK������� PRIMARY KEY (���_����������);

ALTER TABLE CW�������
	ADD CONSTRAINT  �������_�����_2040157128 CHECK  (SUBSTR(���_����������, 2, 7) = '�������');

ALTER TABLE CW�������
	MODIFY �������������_�������� CONSTRAINT  �������������_�����_1462496655 CHECK (�������������_�������� IN ('��������������', '����������������'));

CREATE TABLE CW���������_�������
(
	�����_���������_������� VARCHAR2(3) NOT NULL ,
	���_���������        VARCHAR2(12) NOT NULL ,
	���_���������        VARCHAR2(9) NOT NULL 
);

CREATE UNIQUE INDEX XPK���������_������� ON CW���������_�������
(�����_���������_�������   ASC);

ALTER TABLE CW���������_�������
	ADD CONSTRAINT  XPK���������_������� PRIMARY KEY (�����_���������_�������);

CREATE UNIQUE INDEX XAK2���������_������� ON CW���������_�������
(���_���������   ASC);

ALTER TABLE CW���������_�������
ADD CONSTRAINT  XAK2���������_������� UNIQUE (���_���������);

ALTER TABLE CW���������_�������
	ADD CONSTRAINT  ���_���_�����_1279441507 CHECK  (���_��������� || �����_���������_������� = ���_���������);

CREATE INDEX XIE1���������_������� ON CW���������_�������
(���_���������   ASC);

CREATE TABLE CW���������
(
	�����_������_������  NUMBER(1,0) NOT NULL ,
	���_���������        VARCHAR2(12) NOT NULL 
);

CREATE UNIQUE INDEX XPK��������� ON CW���������
(���_���������   ASC);

ALTER TABLE CW���������
	ADD CONSTRAINT  XPK��������� PRIMARY KEY (���_���������);

ALTER TABLE CW���������
	ADD CONSTRAINT  ���������_�����_1987687452 CHECK  (SUBSTR(���_���������, 1, 9) = '���������');

ALTER TABLE CW���������
	MODIFY �����_������_������ CONSTRAINT  �����_1171472626 CHECK (�����_������_������ >= 0);

CREATE TABLE CW����������������_���
(
	�����_����           VARCHAR2(4) NOT NULL ,
	����������_����_���� NUMBER(2,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK����������������_��� ON CW����������������_���
(�����_����   ASC);

ALTER TABLE CW����������������_���
	ADD CONSTRAINT  XPK����������������_��� PRIMARY KEY (�����_����);

ALTER TABLE CW����������������_���
	ADD CONSTRAINT  �����������_�����_1637157749 CHECK  (SUBSTR(�����_����, 1, 1) = '�' 
);

ALTER TABLE CW����������������_���
	MODIFY �����_���� CONSTRAINT  �����_����_1884848667 CHECK ((SUBSTR(�����_����, 1, 1) = '�'
OR SUBSTR(�����_����, 1, 1) = '�')
AND LENGTH(�����_����) = 4
);

ALTER TABLE CW����������������_���
	MODIFY ����������_����_���� CONSTRAINT  �����_����_����_1425966559 CHECK (����������_����_���� >= 0);

CREATE TABLE CW������
(
	�����_�������        NUMBER(3,0) NOT NULL ,
	�����������_���      VARCHAR2(13) NOT NULL ,
	���_�������          VARCHAR2(7) NOT NULL 
);

CREATE UNIQUE INDEX XPK������ ON CW������
(���_�������   ASC,�����������_���   ASC);

ALTER TABLE CW������
	ADD CONSTRAINT  XPK������ PRIMARY KEY (���_�������,�����������_���);

ALTER TABLE CW������
	ADD CONSTRAINT  ������_�����_669910881 CHECK  (SUBSTR(���_�������, 1, 4) = SUBSTR(�����������_���, 1, 4));

CREATE INDEX XIE3������ ON CW������
(�����_�������   ASC);

CREATE INDEX XIE4������ ON CW������
(�����������_���   ASC);

CREATE TABLE CW�������
(
	�����_�������        NUMBER(3,0) NULL ,
	���_����������       VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK������� ON CW�������
(���_����������   ASC);

ALTER TABLE CW�������
	ADD CONSTRAINT  XPK������� PRIMARY KEY (���_����������);

ALTER TABLE CW�������
	ADD CONSTRAINT  �������_�����_2122034973 CHECK  (SUBSTR(���_����������, 1, 1) = '�');

ALTER TABLE CW�������
	MODIFY �����_������� CONSTRAINT  �����_�������_1401248355 CHECK (�����_������� >= 1);

CREATE INDEX XIE1������� ON CW�������
(�����_�������   ASC);

CREATE TABLE CW������������
(
	���_����������       VARCHAR2(15) NOT NULL ,
	���������������      VARCHAR2(7) NOT NULL ,
	���_��������         VARCHAR2(22) NOT NULL 
);

CREATE UNIQUE INDEX XPK������������ ON CW������������
(���_����������   ASC);

ALTER TABLE CW������������
	ADD CONSTRAINT  XPK������������ PRIMARY KEY (���_����������);

CREATE UNIQUE INDEX XAK1������������ ON CW������������
(���_��������   ASC);

ALTER TABLE CW������������
ADD CONSTRAINT  XAK1������������ UNIQUE (���_��������);

ALTER TABLE CW������������
	ADD CONSTRAINT  ���_�������_1918082216 CHECK  (��������������� || ���_���������� = ���_��������);

ALTER TABLE CW������������
	MODIFY ��������������� CONSTRAINT  ������������_�������������� CHECK (��������������� IN ('�������', '���', '������'));

CREATE TABLE CW�������
(
	�������������_�������� VARCHAR2(9) NOT NULL ,
	���_����������       VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK������ ON CW�������
(���_����������   ASC);

ALTER TABLE CW�������
	ADD CONSTRAINT  XPK������ PRIMARY KEY (���_����������);

ALTER TABLE CW�������
	ADD CONSTRAINT  �������_�����_2053938968 CHECK  (SUBSTR(���_����������, 2, 7) = '�������');

ALTER TABLE CW�������
	MODIFY �������������_�������� CONSTRAINT  ������_����_1691720949 CHECK (�������������_�������� IN ('���������', '��������', '�����'));

CREATE TABLE CW�������
(
	��������������_�������� VARCHAR2(8) NOT NULL ,
	���_����������       VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK������� ON CW�������
(���_����������   ASC);

ALTER TABLE CW�������
	ADD CONSTRAINT  XPK������� PRIMARY KEY (���_����������);

ALTER TABLE CW�������
	MODIFY ��������������_�������� CONSTRAINT  �������_����_1889797129 CHECK (��������������_�������� IN ('��������', '����'));

CREATE TABLE CW�������
(
	������_�������       NUMBER(1,0) NOT NULL ,
	���_����������       VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK������� ON CW�������
(���_����������   ASC);

ALTER TABLE CW�������
	ADD CONSTRAINT  XPK������� PRIMARY KEY (���_����������);

ALTER TABLE CW�������
	ADD CONSTRAINT  �������_�����_2125359824 CHECK  (SUBSTR(���_����������, 2, 7) = '�������');

ALTER TABLE CW�������
	MODIFY ������_������� CONSTRAINT  �������_������_1046431093 CHECK (������_������� BETWEEN 1 AND 6);

CREATE TABLE CW���������
(
	�����_��������       VARCHAR2(6) NOT NULL ,
	���_����������       VARCHAR2(14) NOT NULL ,
	�������_����������   VARCHAR2(16) NOT NULL ,
	��������_����������  VARCHAR2(16) NULL ,
	���_����������       VARCHAR2(1) NOT NULL ,
	����_��������        DATE NULL ,
	���_����������       VARCHAR2(15) NOT NULL ,
	���������_���������� VARCHAR2(8) NULL 
);

CREATE UNIQUE INDEX XPK��������� ON CW���������
(�����_��������   ASC);

ALTER TABLE CW���������
	ADD CONSTRAINT  XPK��������� PRIMARY KEY (�����_��������);

CREATE UNIQUE INDEX XAK1��������� ON CW���������
(���_����������   ASC);

ALTER TABLE CW���������
ADD CONSTRAINT  XAK1��������� UNIQUE (���_����������);

ALTER TABLE CW���������
	ADD CONSTRAINT  ���_����������_152408122 CHECK  (���_���������� || ���������_���������� || �����_�������� = ���_����������);

ALTER TABLE CW���������
	MODIFY ���_���������� CONSTRAINT  ���_���������_1488454748 CHECK (���_���������� IN ('�', '�'));

ALTER TABLE CW���������
	MODIFY ���������_���������� CONSTRAINT  ���������_����������_195850548 CHECK (���������_���������� IN ('�������', '������', '�������', '�������', '��������', '������', '�������'));

ALTER TABLE CW���������
	MODIFY ��������_���������� DEFAULT '��� ��������';

CREATE TABLE CW������
(
	�������������_������� VARCHAR2(7) NOT NULL ,
	���_����������       VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK������ ON CW������
(���_����������   ASC);

ALTER TABLE CW������
	ADD CONSTRAINT  XPK������ PRIMARY KEY (���_����������);

ALTER TABLE CW������
	ADD CONSTRAINT  ������_�����_469433198 CHECK  (SUBSTR(���_����������, 2, 6) = '������');

ALTER TABLE CW������
	MODIFY �������������_������� CONSTRAINT  �������������_�����_1611615165 CHECK (�������������_������� IN ('�����', '�������'));

CREATE TABLE CW��������
(
	�������������_��������� VARCHAR2(12) NOT NULL ,
	���_����������       VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK�������� ON CW��������
(���_����������   ASC);

ALTER TABLE CW��������
	ADD CONSTRAINT  XPK�������� PRIMARY KEY (���_����������);

ALTER TABLE CW��������
	ADD CONSTRAINT  ��������_�����_68561289 CHECK  (SUBSTR(���_����������, 2, 8) = '��������');

ALTER TABLE CW��������
	MODIFY �������������_��������� CONSTRAINT  ��������_����_210397916 CHECK (�������������_��������� IN ('������������', '��������'));

CREATE TABLE CW���_���������
(
	���_���������        VARCHAR2(9) NOT NULL ,
	�����_����           VARCHAR2(4) NOT NULL ,
	�����������_���      VARCHAR2(13) NOT NULL 
);

CREATE UNIQUE INDEX XPK���_��������� ON CW���_���������
(���_���������   ASC);

ALTER TABLE CW���_���������
	ADD CONSTRAINT  XPK���_��������� PRIMARY KEY (���_���������);

CREATE UNIQUE INDEX XAK1���_��������� ON CW���_���������
(�����������_���   ASC);

ALTER TABLE CW���_���������
ADD CONSTRAINT  XAK1���_��������� UNIQUE (�����������_���);

ALTER TABLE CW���_���������
	ADD CONSTRAINT  ���_���_361046675 CHECK  (�����_���� || ���_��������� = �����������_���);

ALTER TABLE CW���_���������
	MODIFY ���_��������� CONSTRAINT  ���_���������_311194201 CHECK (���_��������� IN ('���������', '��������', '��������'));

CREATE INDEX XIE1���_��������� ON CW���_���������
(�����_����   ASC);

CREATE TABLE CW������
(
	������_������        NUMBER(1,0) NOT NULL ,
	���_����������       VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK������ ON CW������
(���_����������   ASC);

ALTER TABLE CW������
	ADD CONSTRAINT  XPK������ PRIMARY KEY (���_����������);

ALTER TABLE CW������
	ADD CONSTRAINT  ������_�����_518848096 CHECK  (SUBSTR(���_����������, 2, 6) = '������');

ALTER TABLE CW������
	MODIFY ������_������ CONSTRAINT  ������_������_1073954959 CHECK (������_������ BETWEEN 1 AND 7);

CREATE TABLE CW�������
(
	�����_����           VARCHAR2(4) NOT NULL ,
	�����_�������        NUMBER(3,0) NOT NULL ,
	���������_�������    VARCHAR2(22) NOT NULL ,
	���_�������          VARCHAR2(9) NOT NULL ,
	��������_�������     VARCHAR2(13) NOT NULL ,
	���_�������          VARCHAR2(7) NOT NULL 
);

CREATE UNIQUE INDEX XPK������� ON CW�������
(�����_����   ASC,�����_�������   ASC);

ALTER TABLE CW�������
	ADD CONSTRAINT  XPK������� PRIMARY KEY (�����_����,�����_�������);

CREATE UNIQUE INDEX XAK1������� ON CW�������
(���������_�������   ASC);

ALTER TABLE CW�������
ADD CONSTRAINT  XAK1������� UNIQUE (���������_�������);

CREATE UNIQUE INDEX XAK2������� ON CW�������
(��������_�������   ASC);

ALTER TABLE CW�������
ADD CONSTRAINT  XAK2������� UNIQUE (��������_�������);

CREATE UNIQUE INDEX XAK3������� ON CW�������
(���_�������   ASC);

ALTER TABLE CW�������
ADD CONSTRAINT  XAK3������� UNIQUE (���_�������);

ALTER TABLE CW�������
	ADD CONSTRAINT  �������_���_�����_2107159506 CHECK  (SUBSTR(���������_�������, 1, 7) = '�������');

ALTER TABLE CW�������
	ADD CONSTRAINT  ��_���_1191576499 CHECK  (�����_���� || �����_������� = ���_�������);

ALTER TABLE CW�������
	MODIFY ���_������� CONSTRAINT  ���_�������_367341758 CHECK (���_������� IN ('������', '���������'));

CREATE TABLE CW���
(
	�����_����           VARCHAR2(4) NOT NULL ,
	���������_����       VARCHAR2(22) NOT NULL ,
	��������_����        VARCHAR2(14) NOT NULL 
);

CREATE UNIQUE INDEX XPK��� ON CW���
(�����_����   ASC);

ALTER TABLE CW���
	ADD CONSTRAINT  XPK��� PRIMARY KEY (�����_����);

CREATE UNIQUE INDEX XAK2��� ON CW���
(���������_����   ASC);

ALTER TABLE CW���
ADD CONSTRAINT  XAK2��� UNIQUE (���������_����);

CREATE UNIQUE INDEX XAK3��� ON CW���
(��������_����   ASC);

ALTER TABLE CW���
ADD CONSTRAINT  XAK3��� UNIQUE (��������_����);

ALTER TABLE CW���
	ADD CONSTRAINT  ���_���_�����_1933448208 CHECK  (SUBSTR(���������_����, 1, 3) = '���');

ALTER TABLE CW���
	ADD CONSTRAINT  �����_����_905638907 CHECK  ((SUBSTR(�����_����, 1, 1) = '�'
OR SUBSTR(�����_����, 1, 1) = '�')
AND LENGTH(�����_����) = 4
);

CREATE TABLE CW���������_�������
(
	�����_����������     NUMBER(6,0) NOT NULL ,
	�����_����_�������   VARCHAR2(4) NOT NULL 
);

CREATE UNIQUE INDEX XPK���������_������� ON CW���������_�������
(�����_����������   ASC);

ALTER TABLE CW���������_�������
	ADD CONSTRAINT  XPK���������_������� PRIMARY KEY (�����_����������);

CREATE INDEX XIE1���������_������� ON CW���������_�������
(�����_����_�������   ASC);

CREATE VIEW ������������� ( ����������_��������,�����_�������,�����_����,��������_�������,���_�������,�������_����������,���_����������,��������_���������� ) 
	 AS  SELECT COUNT(u2.��������_�������),u1.�����_�������,u1.�����_����,u1.��������_�������,u1.���_�������,s.�������_����������,s.���_����������,s.��������_����������
		FROM CW������� u1,CW������� u2,CW������������ r,CW��������� s
		WHERE u1.���������_������� = r.���_�������� AND s.���_���������� = r.���_����������
		GROUP BY u1.��������_�������,
u1.�����_�������,
u1.�����_����,
u1.���_�������,
s.�������_����������,
s.���_����������,
s.��������_����������
;

ALTER TABLE CW��������
	ADD (CONSTRAINT O5 FOREIGN KEY (���_���������) REFERENCES CW���������_������� (���_���������) ON DELETE CASCADE);

ALTER TABLE CW�������
	ADD (CONSTRAINT R_13 FOREIGN KEY (��������) REFERENCES CW������� (���_����������));

ALTER TABLE CW�������
	ADD (CONSTRAINT R_56 FOREIGN KEY (������) REFERENCES CW������������ (���_��������));

ALTER TABLE CW���_�������
	ADD (CONSTRAINT R_30 FOREIGN KEY (�����_���������_�������) REFERENCES CW���������_������� (�����_���������_�������));

ALTER TABLE CW���������������_���
	ADD (CONSTRAINT O2 FOREIGN KEY (�����_����) REFERENCES CW��� (�����_����) ON DELETE CASCADE);

ALTER TABLE CW��������_����������
	ADD (CONSTRAINT O3 FOREIGN KEY (���_���������) REFERENCES CW���������_������� (���_���������) ON DELETE CASCADE);

ALTER TABLE CW������
	ADD (CONSTRAINT R_64 FOREIGN KEY (�����_����������) REFERENCES CW���������_������� (�����_����������));

ALTER TABLE CW���
	ADD (CONSTRAINT O9 FOREIGN KEY (���_����������) REFERENCES CW��������� (���_����������));

ALTER TABLE CW�������
	ADD (CONSTRAINT O10 FOREIGN KEY (���_����������) REFERENCES CW��� (���_����������) ON DELETE CASCADE);

ALTER TABLE CW���������_�������
	ADD (CONSTRAINT R_77 FOREIGN KEY (���_���������) REFERENCES CW���_��������� (���_���������));

ALTER TABLE CW���������
	ADD (CONSTRAINT O6 FOREIGN KEY (���_���������) REFERENCES CW���������_������� (���_���������) ON DELETE CASCADE);

ALTER TABLE CW����������������_���
	ADD (CONSTRAINT O1 FOREIGN KEY (�����_����) REFERENCES CW��� (�����_����));

ALTER TABLE CW������
	ADD (CONSTRAINT R_68 FOREIGN KEY (�����_�������) REFERENCES CW������� (�����_�������));

ALTER TABLE CW������
	ADD (CONSTRAINT R_75 FOREIGN KEY (�����������_���) REFERENCES CW���_��������� (�����������_���));

ALTER TABLE CW������
	ADD (CONSTRAINT R_48 FOREIGN KEY (���_�������) REFERENCES CW������� (���_�������));

ALTER TABLE CW�������
	ADD (CONSTRAINT R_15 FOREIGN KEY (�����_�������) REFERENCES CW������� (�����_�������));

ALTER TABLE CW�������
	ADD (CONSTRAINT O8 FOREIGN KEY (���_����������) REFERENCES CW��������� (���_����������));

ALTER TABLE CW������������
	ADD (CONSTRAINT R_55 FOREIGN KEY (���_����������) REFERENCES CW��� (���_����������));

ALTER TABLE CW�������
	ADD (CONSTRAINT O13 FOREIGN KEY (���_����������) REFERENCES CW������� (���_����������) ON DELETE CASCADE);

ALTER TABLE CW�������
	ADD (CONSTRAINT O7 FOREIGN KEY (���_����������) REFERENCES CW������� (���_����������) ON DELETE CASCADE);

ALTER TABLE CW�������
	ADD (CONSTRAINT O15 FOREIGN KEY (���_����������) REFERENCES CW������� (���_����������) ON DELETE CASCADE);

ALTER TABLE CW������
	ADD (CONSTRAINT O11 FOREIGN KEY (���_����������) REFERENCES CW��� (���_����������) ON DELETE CASCADE);

ALTER TABLE CW��������
	ADD (CONSTRAINT O12 FOREIGN KEY (���_����������) REFERENCES CW��� (���_����������) ON DELETE CASCADE);

ALTER TABLE CW���_���������
	ADD (CONSTRAINT R_74 FOREIGN KEY (�����_����) REFERENCES CW����������������_��� (�����_����));

ALTER TABLE CW������
	ADD (CONSTRAINT O14 FOREIGN KEY (���_����������) REFERENCES CW������� (���_����������) ON DELETE CASCADE);

ALTER TABLE CW�������
	ADD (CONSTRAINT R_27 FOREIGN KEY (�����_����) REFERENCES CW��� (�����_����));

ALTER TABLE CW�������
	ADD (CONSTRAINT R_57 FOREIGN KEY (���������_�������) REFERENCES CW������������ (���_��������));

ALTER TABLE CW���
	ADD (CONSTRAINT R_58 FOREIGN KEY (���������_����) REFERENCES CW������������ (���_��������));

ALTER TABLE CW���������_�������
	ADD (CONSTRAINT R_62 FOREIGN KEY (�����_����_�������) REFERENCES CW���_������� (�����_����_�������));
