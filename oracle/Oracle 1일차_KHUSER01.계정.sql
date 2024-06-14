SHOW USER;

CREATE TABLE EMPLOYEE( -- TABLE ����
    NAME VARCHAR2(20),
    T_CODE VARCHAR2(10),
    D_CODE VARCHAR2(10),
    AGE NUMBER
);
-- 1. �÷��� ������ Ÿ�Ծ��� ���̺� �����Ͽ� ������
-- -> ������Ÿ�� �ۼ�
-- 2. ���ѵ� ���� ���̺��� �����Ͽ� ������
-- -> System �������� RESORCE ���� �ο�
-- 3. ���� ���� �� ���� ���ο� ��ũ��Ʈ ���� ���� ��ũ��Ʈ���� ������ �����Ͽ�
-- ��ɾ� �����

INSERT INTO EMPLOYEE(NAME, T_CODE, D_CODE, AGE) -- ������ ����
VALUES('�Ͽ���' , 'T1' , 'D1' , 33);
INSERT INTO EMPLOYEE -- ���� ����
VALUES('�̿���','T2','D1',44);
INSERT INTO EMPLOYEE
VALUES('�����','T1','D2',32); 
INSERT INTO EMPLOYEE  
VALUES('����ȣ','T1','D2',29);


DROP TABLE EMPLOYEE; -- TABLE ����
DELETE FROM EMPLOYEE; -- TABLE ���� ����
DELETE FROM EMPLOYEE WHERE NAME = '����ȣ'; -- DELETE FROM WHERE

UPDATE EMPLOYEE SET T_CODE = 'T3' WHERE NAME = '�Ͽ���'; -- ������Ʈ ����

SELECT NAME,T_CODE, D_CODE, AGE FROM EMPLOYEE
WHERE NAME = '�Ͽ���';

SELECT * FROM EMPLOYEE;

-- �̸��� STUDENT TABLE ���̺��� ���弼��
-- �̸� ���� �г� �ּҸ� ������ �� �ֵ��� �ϸ�
-- �Ͽ��� 21 1 ����� �߱��� �������ּ���
-- �����͸� �����ϴ� �������� �ۼ��ϰ� ������ Ȯ���Ͻð�
-- ���̺��� �����ϴ� �������� �ۼ��Ͽ� ���̺��� ����� ���� Ȯ���ϼ���

CREATE TABLE STUDENT( -- ���̺� STUDENT ����
NAME VARCHAR2(10), -- ���ڿ� 10��
AGE NUMBER(3), -- ���� 3�ڸ�123
GRADE NUMBER(5),
ADDRESS VARCHAR2(200)
);

SELECT * FROM STUDENT;

ROLLBACK; -- �ǵ�����
INSERT INTO STUDENT  -- ������ ����
VALUES ('�Ͽ���',21,1,'����� �߱�'); -- ��
COMMIT; -- ����

ROLLBACK; -- �ǵ�����
INSERT INTO STUDENT  -- ������ ����
VALUES ('�̿���',22,2,'����� �߱�'); -- ��
COMMIT; -- ����

UPDATE STUDENT  -- ���̺� STUDENT �� AGE�� 21�� ���� NAME�� ����ڷ� ����
SET NAME = '�����' -- NAME�� ����ڷ� �ٲ��
WHERE AGE = 21; -- ���? AGE�� 21�� ����

DELETE FROM STUDENT -- ���̺� ���� ����
WHERE AGE = 21; -- AGE�� 21�� ���� 


DROP TABLE STUDENT; -- ���̺� ����

-- ���̵� KHUSER02 ��й�ȣ�� KHUSER02 ������ �����ϰ�
-- ������ �ǵ��� �ϰ� ���̺� ���� �� �ֵ��� �ϼ���

--system red
CREATE USER KHUSER03 IDENTIFIED BY KHUSER03;
GRANT CONNECT TO KHUSER03; -- ���� �ο�

-- KHUSER02  �ϴû�
CREATE TABLE STUDENT (
NAME VARCHAR2(20), -- 20byte ��(3byte)
AGE NUMBER(3),
GRADE NUMBER(5),
ADDRESS VARCHAR2(200)
);

-- system red
GRANT RESOURCE TO KHUSER02;

INSERT INTO STUDENT(NAME,AGE,GRADE,ADDRESS)
VALUES('����ȣ',29,6,'��� �ϻ�');

DELETE STUDENT;

DROP TABLE STUDENT;

------------------------------------------------------------------
GRANT RESOURCE TO KHUSER03; -- ���̺� ���� �������� �ο�

CREATE TABLE STUDENT( -- ���̺� ����
NAME VARCHAR2(20),
AGE NUMBER(3)
);

SELECT * FROM STUDENT;

INSERT INTO STUDENT VALUES ('����ȣ',29); -- ����
INSERT INTO STUDENT VALUES('����ȣ',30);

COMMIT; -- ����
DELETE FROM STUDENT 
NAME -- �̸��� ����
WHERE AGE = 29; -- AGE�� 29�� ����
ROLLBACK; -- �ǵ�����

DROP TABLE STUDENT; -- ���̺� STUDENT �����