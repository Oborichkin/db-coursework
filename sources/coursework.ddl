
CREATE TABLE CW��������_���
(
	��������_��������_��� VARCHAR2(15) NOT NULL ,
	��_���������_���     NUMBER(2,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK��������_��� ON CW��������_���
(��������_��������_���   ASC);

ALTER TABLE CW��������_���
	ADD  PRIMARY KEY (��������_��������_���);

CREATE INDEX XIE1��������_��� ON CW��������_���
(��_���������_���   ASC);

CREATE TABLE CW��������_�������
(
	��������_��������_������� VARCHAR2(15) NOT NULL ,
	��������_���������_������� VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK��������_������� ON CW��������_�������
(��������_��������_�������   ASC);

ALTER TABLE CW��������_�������
	ADD  PRIMARY KEY (��������_��������_�������);

CREATE INDEX XIE1��������_������� ON CW��������_�������
(��������_���������_�������   ASC);

CREATE TABLE CW��������_��������
(
	��������_��������_�������� VARCHAR2(15) NOT NULL ,
	��_���������_�������� NUMBER(2,0) NULL 
);

CREATE UNIQUE INDEX XPK��������_�������� ON CW��������_��������
(��������_��������_��������   ASC);

ALTER TABLE CW��������_��������
	ADD  PRIMARY KEY (��������_��������_��������);

CREATE INDEX XIE1��������_�������� ON CW��������_��������
(��_���������_��������   ASC);

CREATE TABLE CW�������
(
	��_�������           NUMBER(5,0) NOT NULL ,
	�����_��������       NUMBER(6,0) NULL 
);

CREATE UNIQUE INDEX XPK������� ON CW�������
(��_�������   ASC);

ALTER TABLE CW�������
	ADD  PRIMARY KEY (��_�������);

CREATE INDEX XIE1������� ON CW�������
(�����_��������   ASC);

CREATE TABLE CW���_�������
(
	��������_����_������� VARCHAR2(15) NOT NULL ,
	��������_���������_������� VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK���_������� ON CW���_�������
(��������_����_�������   ASC);

ALTER TABLE CW���_�������
	ADD  PRIMARY KEY (��������_����_�������);

CREATE INDEX XIE1���_������� ON CW���_�������
(��������_���������_�������   ASC);

CREATE TABLE CW���������_���
(
	�����_����           NUMBER(3,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK���������_��� ON CW���������_���
(�����_����   ASC);

ALTER TABLE CW���������_���
	ADD  PRIMARY KEY (�����_����);

CREATE TABLE CW������
(
	�������_�_�������    NUMBER(7,0) NOT NULL ,
	������               DATE NOT NULL ,
	����������           DATE NULL ,
	�����_�������        NUMBER(3, 0) NULL ,
	��������_����_������� VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK������ ON CW������
(�������_�_�������   ASC);

ALTER TABLE CW������
	ADD  PRIMARY KEY (�������_�_�������);

CREATE INDEX XIE1������ ON CW������
(��������_����_�������   ASC);

CREATE TABLE CW���
(
	��_���������_���     NUMBER(2,0) NOT NULL ,
	�����_��������       NUMBER(6,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK��� ON CW���
(�����_��������   ASC);

ALTER TABLE CW���
	ADD  PRIMARY KEY (�����_��������);

CREATE INDEX XIE1��� ON CW���
(��_���������_���   ASC);

CREATE TABLE CW���������_���
(
	��������_���������_��� VARCHAR2(15) NOT NULL ,
	��_���������_���     NUMBER(2,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK���������_��� ON CW���������_���
(��_���������_���   ASC);

ALTER TABLE CW���������_���
	ADD  PRIMARY KEY (��_���������_���);

CREATE UNIQUE INDEX XAK1���������_��� ON CW���������_���
(��������_���������_���   ASC);

CREATE TABLE CW���������_�������
(
	��������_���������_������� VARCHAR2(15) NOT NULL ,
	�����_����           NUMBER(3,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK���������_������� ON CW���������_�������
(��������_���������_�������   ASC);

ALTER TABLE CW���������_�������
	ADD  PRIMARY KEY (��������_���������_�������);

CREATE INDEX XIE1���������_������� ON CW���������_�������
(�����_����   ASC);

CREATE TABLE CW���������_��������
(
	��������_���������_�������� VARCHAR2(15) NOT NULL ,
	��_���������_�������� NUMBER(2,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK���������_�������� ON CW���������_��������
(��_���������_��������   ASC);

ALTER TABLE CW���������_��������
	ADD  PRIMARY KEY (��_���������_��������);

CREATE UNIQUE INDEX XAK1���������_�������� ON CW���������_��������
(��������_���������_��������   ASC);

CREATE TABLE CW������
(
	�����_��������       NUMBER(6,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK������ ON CW������
(�����_��������   ASC);

ALTER TABLE CW������
	ADD  PRIMARY KEY (�����_��������);

CREATE TABLE CW������_�������
(
	��_�������           NUMBER(5,0) NOT NULL ,
	�����_��������       NUMBER(6,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK������_������� ON CW������_�������
(��_�������   ASC,�����_��������   ASC);

ALTER TABLE CW������_�������
	ADD  PRIMARY KEY (��_�������,�����_��������);

CREATE INDEX XIE1������_������� ON CW������_�������
(�����_��������   ASC);

CREATE TABLE CW������_���������
(
	�������_������       NUMBER(6,0) NOT NULL ,
	�������_���_��       NUMBER(6,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK������_��������� ON CW������_���������
(�������_������   ASC,�������_���_��   ASC);

ALTER TABLE CW������_���������
	ADD  PRIMARY KEY (�������_������,�������_���_��);

CREATE INDEX XIE1������_��������� ON CW������_���������
(�������_���_��   ASC);

CREATE TABLE CW���������_�������
(
	�����_��������       NUMBER(6,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK���������_������� ON CW���������_�������
(�����_��������   ASC);

ALTER TABLE CW���������_�������
	ADD  PRIMARY KEY (�����_��������);

CREATE TABLE CW���������_����
(
	�����_��������       NUMBER(6,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK���������_���� ON CW���������_����
(�����_��������   ASC);

ALTER TABLE CW���������_����
	ADD  PRIMARY KEY (�����_��������);

CREATE TABLE CW�����������_���
(
	�����_����           NUMBER(3,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK�����������_��� ON CW�����������_���
(�����_����   ASC);

ALTER TABLE CW�����������_���
	ADD  PRIMARY KEY (�����_����);

CREATE TABLE CW������
(
	�����_�������        NUMBER(3, 0) NOT NULL ,
	��������_���������_������� VARCHAR2(15) NOT NULL 
);

CREATE UNIQUE INDEX XPK������ ON CW������
(�����_�������   ASC,��������_���������_�������   ASC);

ALTER TABLE CW������
	ADD  PRIMARY KEY (�����_�������,��������_���������_�������);

CREATE INDEX XIE1������ ON CW������
(��������_���������_�������   ASC);

CREATE TABLE CW�������
(
	��_�������           NUMBER(5,0) NULL ,
	��_���������_�������� NUMBER(2,0) NOT NULL ,
	�����_��������       NUMBER(6,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK������� ON CW�������
(�����_��������   ASC);

ALTER TABLE CW�������
	ADD  PRIMARY KEY (�����_��������);

CREATE INDEX XIE1������� ON CW�������
(��_�������   ASC);

CREATE INDEX XIE2������� ON CW�������
(��_���������_��������   ASC);

CREATE TABLE CW���������
(
	�����_��������       NUMBER(6,0) NOT NULL ,
	���_����������       VARCHAR2(12) NOT NULL ,
	�������_����������   VARCHAR2(12) NOT NULL ,
	��������_����������  VARCHAR2(12) NULL 
);

CREATE UNIQUE INDEX XPK��������� ON CW���������
(�����_��������   ASC);

ALTER TABLE CW���������
	ADD  PRIMARY KEY (�����_��������);

CREATE TABLE CW�������
(
	�����_�������        NUMBER(3,0) NOT NULL ,
	���_�������          VARCHAR2(9) NOT NULL  CHECK (���_������� IN ('���������', '������')),
	�����_����           NUMBER(3,0) NOT NULL ,
	�����_��������       NUMBER(6,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK������� ON CW�������
(�����_�������   ASC,�����_����   ASC);

ALTER TABLE CW�������
	ADD  PRIMARY KEY (�����_�������,�����_����);

CREATE INDEX XIE2������� ON CW�������
(�����_����   ASC);

CREATE INDEX XIE3������� ON CW�������
(�����_��������   ASC);

CREATE TABLE CW���
(
	�����_����           NUMBER(3,0) NOT NULL ,
	�����_��������       NUMBER(6,0) NOT NULL 
);

CREATE UNIQUE INDEX XPK��� ON CW���
(�����_����   ASC);

ALTER TABLE CW���
	ADD  PRIMARY KEY (�����_����);

CREATE INDEX XIE1��� ON CW���
(�����_��������   ASC);

CREATE VIEW ������������� ( ���_����������,�������_����������,��������_����������,����� ) 
	 AS  SELECT CW���������.���_����������,CW���������.�������_����������,CW���������.��������_����������,COUNT(CW�������2.�����_�������)
		FROM CW��� ,CW������� CW�������2,CW������� CW�������1,CW��������� 
		WHERE CW���.�����_���� = CW�������1.�����_���� AND
CW�������1.�����_�������� = CW���������.�����_��������
		GROUP BY CW�������1.�����_�������, CW�������1.�����_����, CW���������.�������_����������, CW���������.���_����������, CW���������.��������_����������;

ALTER TABLE CW��������_���
	ADD (FOREIGN KEY (��_���������_���) REFERENCES CW���������_��� (��_���������_���));

ALTER TABLE CW��������_�������
	ADD (FOREIGN KEY (��������_���������_�������) REFERENCES CW���������_������� (��������_���������_�������));

ALTER TABLE CW��������_��������
	ADD (FOREIGN KEY (��_���������_��������) REFERENCES CW���������_�������� (��_���������_��������) ON DELETE SET NULL);

ALTER TABLE CW�������
	ADD (FOREIGN KEY (�����_��������) REFERENCES CW������� (�����_��������) ON DELETE SET NULL);

ALTER TABLE CW���_�������
	ADD (FOREIGN KEY (��������_���������_�������) REFERENCES CW���������_������� (��������_���������_�������));

ALTER TABLE CW���������_���
	ADD (FOREIGN KEY (�����_����) REFERENCES CW��� (�����_����) ON DELETE CASCADE);

ALTER TABLE CW������
	ADD (FOREIGN KEY (��������_����_�������) REFERENCES CW���_������� (��������_����_�������));

ALTER TABLE CW���
	ADD (FOREIGN KEY (��_���������_���) REFERENCES CW���������_��� (��_���������_���));

ALTER TABLE CW���
	ADD (FOREIGN KEY (�����_��������) REFERENCES CW��������� (�����_��������));

ALTER TABLE CW���������_�������
	ADD (FOREIGN KEY (�����_����) REFERENCES CW�����������_��� (�����_����));

ALTER TABLE CW������
	ADD (FOREIGN KEY (�����_��������) REFERENCES CW��� (�����_��������));

ALTER TABLE CW������_�������
	ADD (FOREIGN KEY (��_�������) REFERENCES CW������� (��_�������));

ALTER TABLE CW������_�������
	ADD (FOREIGN KEY (�����_��������) REFERENCES CW������ (�����_��������));

ALTER TABLE CW������_���������
	ADD (FOREIGN KEY (�������_������) REFERENCES CW������ (�����_��������));

ALTER TABLE CW������_���������
	ADD (FOREIGN KEY (�������_���_��) REFERENCES CW���������_������� (�����_��������));

ALTER TABLE CW���������_�������
	ADD (FOREIGN KEY (�����_��������) REFERENCES CW��� (�����_��������));

ALTER TABLE CW���������_����
	ADD (FOREIGN KEY (�����_��������) REFERENCES CW��� (�����_��������));

ALTER TABLE CW�����������_���
	ADD (FOREIGN KEY (�����_����) REFERENCES CW��� (�����_����) ON DELETE SET NULL);

ALTER TABLE CW������
	ADD (FOREIGN KEY (��������_���������_�������) REFERENCES CW���������_������� (��������_���������_�������) ON DELETE SET NULL);

ALTER TABLE CW�������
	ADD (FOREIGN KEY (��_���������_��������) REFERENCES CW���������_�������� (��_���������_��������));

ALTER TABLE CW�������
	ADD (FOREIGN KEY (��_�������) REFERENCES CW������� (��_�������));

ALTER TABLE CW�������
	ADD (FOREIGN KEY (�����_��������) REFERENCES CW��������� (�����_��������));

ALTER TABLE CW�������
	ADD (FOREIGN KEY (�����_����) REFERENCES CW��� (�����_����));

ALTER TABLE CW�������
	ADD (FOREIGN KEY (�����_��������) REFERENCES CW���������_������� (�����_��������));

ALTER TABLE CW���
	ADD (FOREIGN KEY (�����_��������) REFERENCES CW���������_���� (�����_��������));
