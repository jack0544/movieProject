CREATE TABLE MEMBERM(
    MEMID       NVARCHAR2(20) PRIMARY KEY,   -- ȸ�� IDlll
    MEMPW       NVARCHAR2(100),      -- ȸ�� PW
    MEMNAME     NVARCHAR2(5),        -- ȸ�� �̸�
    MEMBIRTH    NVARCHAR2(10),       -- ȸ�� ����
    MEMPHONE    NVARCHAR2(20),       -- ȸ�� ����ó
    MEMPROFILENAME  NVARCHAR2(50),    -- ȸ�� �����ʻ���
    MEMCOUPON NVARCHAR2(30)           -- ȸ�� ����
);

-- MOVIEM(��ȭ)���̺� ���� 12.15
CREATE TABLE MOVIEM(
    MOVNAME NVARCHAR2(50) PRIMARY KEY,  -- ��ȭ�̸�
    MOVGENRE NVARCHAR2(20),  -- ��ȭ�帣
    MOVSTAR NVARCHAR2(20),   -- ��ȭ����
    MOVAGE NVARCHAR2(30),    -- ��ȭ������
    MOVDATE NVARCHAR2(30),   -- ��ȭ������
    MOVDIRECTOR NVARCHAR2(30),   -- ��ȭ����
    MOVACTOR1 NVARCHAR2(30),     -- �⿬���1
    MOVACTOR2 NVARCHAR2(30),     -- �⿬���2   
    MOVACTOR3 NVARCHAR2(30),     -- �⿬���3
    MOVACTOR4 NVARCHAR2(30),     -- �⿬���4       // 12.05    
    MOVACTORPIC1 NVARCHAR2(500),     -- �⿬���1 ����
    MOVACTORPIC2 NVARCHAR2(500),     -- �⿬���2 ����  
    MOVACTORPIC3 NVARCHAR2(500),     -- �⿬���3 ����
    MOVACTORPIC4 NVARCHAR2(500),     -- �⿬���4 ���� // 12.05
    MOVRANK NUMBER,             -- ��ȭ����
    MOVRUNTIME NVARCHAR2(30),   -- ��ȭ����Ÿ��
    MOVCOUNTRY NVARCHAR2(30),   -- ��ȭ���۱���
    MOVCONTEXT NVARCHAR2(1000),  -- ��ȭ�ٰŸ�
    MOVMAINPICTURE NVARCHAR2(500),   -- ��ȭ������
    MOVPICTURE1 NVARCHAR2(500),      -- ��ȭ ����1
    MOVPICTURE2 NVARCHAR2(500),      -- ��ȭ ����2
    MOVPICTURE3 NVARCHAR2(500),      -- ��ȭ ����3
    MOVPICTURE4 NVARCHAR2(500),      -- ��ȭ ����4
    MOVPICTURE5 NVARCHAR2(500),      -- ��ȭ ����5
    MOVPICTURE6 NVARCHAR2(500),      -- ��ȭ ����6   // 12.05
    MOVTICKETS NVARCHAR2(50),              -- ��ȭ ���� ��
    MOVPESCORE NVARCHAR2(30),              -- Pre Egg ����   // 12.05
    MOVGESCORE NVARCHAR2(30),              -- Golden Egg ����    // 12.05
    MOVTEASERURL NVARCHAR2(500)     -- ��ȭ Ƽ������ URL   // 12.05
);

-- THEATERM(�󿵰�)���̺� ���� 12.15
CREATE TABLE THEATERM(
    THENAME NVARCHAR2(20),      -- ���� �̸�
    THEROOM NVARCHAR2(5),       -- ���� 0��
    THECITY NVARCHAR2(20),      -- ������ �ִ� ����
    CONSTRAINT THE_PK PRIMARY KEY (THENAME, THEROOM)
);

CREATE TABLE TIMEMOVIEM(
    TIMMOVNAME NVARCHAR2(50),       -- �ش� �󿵽ð� ��ȭ �̸�
    TIMTHENAME NVARCHAR2(20),       -- �ش� �󿵽ð� ���� �̸�
    TIMTHEROOM NVARCHAR2(5),        -- �ش� �󿵽ð� ���� 0��
    TIMTHECITY NVARCHAR2(20),       -- �ش� �󿵽ð� ������ �ִ� ���� 
    TIMSTARTDATE NVARCHAR2(30),     -- �ش� �󿵽ð� ��¥(��~�ϱ�����)
    TIMCURTIME NVARCHAR2(20),       -- �ش� �󿵽ð� ����Ʈ�� �ð���
    TIMSTARTTIME1 NVARCHAR2(20),     -- �ش� �󿵽ð� ���� �ð�
    TIMSTARTTIME2 NVARCHAR2(20),     -- �ش� �󿵽ð� ���� �ð�
    TIMSTARTTIME3 NVARCHAR2(20),     -- �ش� �󿵽ð� ���� �ð�
    TIMSTARTTIME4 NVARCHAR2(20),     -- �ش� �󿵽ð� ���� �ð�
    TIMLEFTSEAT NUMBER,             -- �ش� �󿵽ð� ���� �¼� �� 
    TIMLEFTLIST NVARCHAR2(350),     -- �ش� �󿵽ð� �¼� ���
    TIMBACKPIC NVARCHAR2(500),      -- �ش� �� �޹�� ���� 
    TIMPOSTER NVARCHAR2(500),        -- ������
    CONSTRAINT TIM_PK PRIMARY KEY (TIMMOVNAME , TIMTHENAME , TIMTHEROOM , TIMCURTIME, TIMSTARTDATE)
);


-- COMMENTM(�ڸ�Ʈ)���̺� ���� 12.15
CREATE TABLE COMMENTM(
    COMNUM      NUMBER,-- ��۹�ȣ(�⺻Ű)
    COMMOVIE    NVARCHAR2(50),-- ��ȭ��(�⺻Ű)
    COMWRITER   NVARCHAR2(20), -- �ۼ���
    COMPROFILENAME  NVARCHAR2(50),-- ȸ������
    COMDATE     NVARCHAR2(20) , -- �ۼ��ð�
    COMCONTENT  NVARCHAR2(300),-- ��۳���
    COMSTAR     NUMBER,-- ����
    COMGOOD     NUMBER, -- ���ƿ� ��
    COMBAD      NUMBER, -- �Ⱦ�� ��
    CONSTRAINT COM_PK PRIMARY KEY (COMNUM, COMMOVIE)
);
delete 
-- COMMENTM SEQ(��۹�ȣ ������) ���� 12.15
CREATE SEQUENCE COM_SEQ
       INCREMENT BY 1
       START WITH 1
       NOCYCLE;

-- TICKETM(Ƽ��) ���̺� ���� 12.15
CREATE TABLE TICKETM(
    TICPIC NVARCHAR2(500), -- ������ ����
    
    TICID NVARCHAR2(50), -- ���̵�
    
    TICNUM NUMBER primary key, -- ���Ź�ȣ
    
    TICNAME NVARCHAR2(30), -- ȸ����
    
    TICMOVNAME NVARCHAR2(50), -- ��ȭ�̸�
    
    TICTHENAME NVARCHAR2(20), -- �����
    
    TICTHEROOM NVARCHAR2(30), -- �󿵰�
    
    TICSTARTDATE NVARCHAR2(20), -- ������ ��¥
    
    TICTIMSTART NVARCHAR2(50), -- �󿵽ð���
    
    TICSEATNUM NVARCHAR2(350), -- �¼���ȣ
    
    TICMOVPRICE NUMBER -- ��ȭ ����
);

-- MONEY(��) ���̺� ���� 12.15
CREATE TABLE MONEYM(
    MONID NVARCHAR2(20),
    MONPW NVARCHAR2(100),
    MONMONEY NUMBER
);
-- PAYM(����) ���̺� ����
    CREATE TABLE PAYM(
    
    PAYPIC NVARCHAR2(500), -- �ش� ������ ����
    
    PAYID NVARCHAR2(20), -- ���̵�
    
    PAYNAME NVARCHAR2(20), -- ȸ����
    
    PAYMOVNAME NVARCHAR2(50), -- ��ȭ�̸�
    
    PAYTHENAME NVARCHAR2(20), -- �����
    
    PAYTHEROOM NVARCHAR2(20), -- �󿵰�
    
    PAYSTARTDATE NVARCHAR2(20), -- ������ ��¥
    
    PAYTIMSTART NVARCHAR2(50), -- �󿵽ð���
    
    PAYSEATNUM NVARCHAR2(350), -- �¼���ȣ
    
    PAYMOVPRICE NUMBER, -- ��ȭ ����
    
    PAYLEFTLIST NVARCHAR2(350) -- ���� �¼� ����Ʈ
    
);

-- ũ�Ѹ� �� ora-12519 ��������!
-- CMDâ��
-- C:��> sqlplus sys/����Ŭ ��ġ �� �Է��� ��ȣ as sysdba �ϰ�
-- SQL> shutdown immediate
-- SQL> startup 
-- ���� oracle���� 
-- ALTER system SET processes=1500 scope=spfile;
-- commit;
-- SHOW PARAMETER PROCESSES;


INSERT INTO THEATERM VALUES ('������',3,'��õ');
INSERT INTO THEATERM VALUES ('����Ȧ��',3,'��õ');
INSERT INTO THEATERM VALUES ('������',3,'����');
INSERT INTO THEATERM VALUES ('������',3,'����');
INSERT INTO THEATERM VALUES ('��õ��',3,'���');
INSERT INTO THEATERM VALUES ('��������',3,'���');

