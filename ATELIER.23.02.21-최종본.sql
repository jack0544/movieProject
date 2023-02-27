-- ���� ���̺�
select * from finalboardlist order by boacode DESC;
DROP TABLE AUTHORITY;
CREATE TABLE AUTHORITY(
    AUTCODE NUMBER PRIMARY KEY, -- ���� �ڵ�
    AUTNAME NVARCHAR2(15) UNIQUE, --���� �̸�
    AUTGIVE NUMBER, -- ���� �ο�
    AUTSECU NUMBER, -- ȸ�� ����
    AUTACCO NUMBER, -- ���� ���� ����
    AUTACHAT NUMBER, -- ������ ����
    AUTAMAIL NUMBER, -- ��������
    AUTCATEGORY NUMBER -- ī�װ� ����
);
INSERT INTO AUTHORITY VALUES(0,'����',0,0,0,0,0,0);
-- ���� ������
DROP SEQUENCE AUT_SEQ;
CREATE SEQUENCE AUT_SEQ
       INCREMENT BY 1;

-- ȸ�����̺�
DROP TABLE MEMBER;
CREATE TABLE MEMBER(
    MEMCODE NUMBER PRIMARY KEY, -- ȸ���ڵ�
    MEMID NVARCHAR2(50) UNIQUE, -- ȸ�����̵�
    MEMPW NVARCHAR2(150), -- ȸ�� ��й�ȣ
    MEMNAME NVARCHAR2(10) UNIQUE, -- ȸ�� �̸�
    MEMBIRTH NVARCHAR2(20), -- ȸ�� ����
    MEMGENDER NVARCHAR2(5), -- ȸ�� ����
    MEMADDR NVARCHAR2(50), -- ȸ�� �ּ�
    MEMPHONE NVARCHAR2(20), -- ȸ�� ����ó
    MEMPROFILENAME NVARCHAR2(150), -- ȸ�� ������ ����
    MEMGRADE NVARCHAR2(10), -- ȸ�� ���
    MEMPAYGRADE NVARCHAR2(10), -- ȸ�� �ɹ���
    MEMSTATE NVARCHAR2(10), -- ȸ�� ����
    MEMAUTCODE NUMBER, -- ȸ������
    MEMPOINT NUMBER, -- ȸ�� ����Ʈ
    MEMBACKGROUND NVARCHAR2(150),-- ȸ�� ��� ����
    MEMINTRO NVARCHAR2(150), --ȸ�� �Ұ�
    MEMDATE DATE -- ȸ��������
);
ALTER TABLE MEMBER
ADD CONSTRAINT fk_aut foreign KEY(MEMAUTCODE) references AUTHORITY (AUTCODE);
 INSERT INTO MEMBER VALUES (0, 'not@fish.co.kr', '213', '����', '���Է�', '���Է�', '���Է�', '���Է�', 'default.png', '�ǹ�', '����', '������', 0, 0,'default.jpg','�Ұ����� �ۼ����ּ���',sysdate);
 
-- ȸ�� ������
DROP SEQUENCE MEM_SEQ;
CREATE SEQUENCE MEM_SEQ
       INCREMENT BY 1;

-- ����Ʈ ���� �� ��� ����
DROP TABLE POINTHISTORY;
CREATE TABLE POINTHISTORY(
    POIMEMCODE NUMBER, -- ȸ�� �ڵ�
    POIUPDATE NUMBER, -- ���� ����
    POIDATE date -- ���� ��¥
);
ALTER TABLE POINTHISTORY
ADD CONSTRAINT fk_poi_mem foreign KEY(POIMEMCODE) references MEMBER (MEMCODE);

-- �Խ��� ī�װ� ���̺�
DROP TABLE BOCATEGORY;
CREATE TABLE BOCATEGORY(
    CATECODE NUMBER PRIMARY KEY, -- ī�װ� �ڵ�
    CATEGORY NVARCHAR2(10), -- ī�װ�
    SUBCATEGORY NVARCHAR2(10) -- ���� ī�װ�
);

-- ī�װ� �ڵ� ������
DROP SEQUENCE CATE_SEQ;
CREATE SEQUENCE CATE_SEQ
       INCREMENT BY 1;


-- ��ũ �����̽�
DROP TABLE WORKSPACE;
CREATE TABLE WORKSPACE(
    WORKCODE NUMBER PRIMARY KEY, -- ��ũ �����̽� �ڵ�
    WORKCATECODE NUMBER, -- ī�װ� �ڵ�
    WORKMEMCODE NUMBER, -- ȸ�� �ڵ�
    WORKTITLE NVARCHAR2(50), -- ����
    WORKINTRO NVARCHAR2(50), -- ����
    WORKIMGNAME NVARCHAR2(100), -- ��ǥ �̹���
    WORKTAG NVARCHAR2(150) -- �±�
);
INSERT INTO BOCATEGORY VALUES(0,'����','����');
INSERT INTO WORKSPACE VALUES(0,0,0,'����','����','����','����');


ALTER TABLE WORKSPACE
ADD CONSTRAINT fk_work_mem foreign KEY(WORKMEMCODE) references MEMBER (MEMCODE);
ALTER TABLE WORKSPACE
ADD CONSTRAINT fk_work_cate foreign KEY(WORKCATECODE) references BOCATEGORY (CATECODE);


-- ��ũ�����̽� �ڵ� ������
DROP SEQUENCE WORK_SEQ;
CREATE SEQUENCE WORK_SEQ
       INCREMENT BY 1;

-- �Ű� ���̺�
DROP TABLE REPORT;
CREATE TABLE REPORT(
    REPCODE NUMBER PRIMARY KEY, -- �Ű� �ڵ�
    REPSTATE NVARCHAR2(10), -- ó�� ����
    REPTITLE NVARCHAR2(50), -- �Ű� ����
    REPMEMCODE NUMBER, -- ȸ�� �ڵ�
    REPCONTENT NVARCHAR2(50), -- �Ű� ����
    REPFILENAME NVARCHAR2(150) -- ÷�� ����
);
ALTER TABLE REPORT
ADD CONSTRAINT fk_report_mem foreign KEY(REPMEMCODE) references MEMBER (MEMCODE);

-- �Ű� �ڵ� ������
DROP SEQUENCE REP_SEQ;
CREATE SEQUENCE REP_SEQ
       INCREMENT BY 1;


       
-- �Խù� ���̺�
DROP TABLE BOARD;
CREATE TABLE BOARD(
    BOACODE NUMBER PRIMARY KEY, -- �Խñ� �ڵ�
    BOACATECODE NUMBER, -- ī�װ� �ڵ�
    BOAWORKCODE NUMBER, -- ��ũ�����̽� �ڵ�
    BOATITLE NVARCHAR2(100), -- ����
    BOAMEMCODE NUMBER, -- ȸ�� �ڵ�
    BOACONTENT NVARCHAR2(50), -- ����
    BOAHIT NUMBER, -- ��ȸ��
    BOADATE date, -- �Խ� ��¥
    BOATAG NVARCHAR2(150), -- �Խñ� �±�
    BOAFILENAME NVARCHAR2(50), -- ÷�� ����
    BOABESTIMG NVARCHAR2(100) -- ��ǥ ����
);
ALTER TABLE BOARD
ADD CONSTRAINT fk_board_mem foreign KEY(BOAMEMCODE) references MEMBER (MEMCODE);
ALTER TABLE BOARD
ADD CONSTRAINT fk_board_work foreign KEY(BOAWORKCODE) references WORKSPACE (WORKCODE);

--------��� ������------------------
CREATE SEQUENCE COMMENT_SEQ  INCREMENT BY 1;

------------ �Խñ� ��ȣ ������---------------------
CREATE SEQUENCE BO_SEQ  INCREMENT BY 1;

-- ��� ���̺�
DROP TABLE COMENT;
CREATE TABLE COMENT(
    COMCODE NUMBER PRIMARY KEY, -- ��� �ڵ�
    COMBOACODE NUMBER, -- �Խñ� �ڵ�
    COMMEMCODE NUMBER, -- ȸ���ڵ�
    COMENT NVARCHAR2(50), -- ����
    COMDATE date, -- �ۼ���
    COMODI NUMBER

);
ALTER TABLE COMENT
ADD CONSTRAINT fk_comen_mem foreign KEY(COMMEMCODE) references MEMBER (MEMCODE);

-- �ȷ���& �ȷο� ���̺�
DROP TABLE FOLLOW;
CREATE TABLE FOLLOW(
    FOLLOWING NUMBER, -- �ȷο� �ϴ� ���
    FOLLOWER NUMBER -- �ȷο� ���ϴ� ���
);
ALTER TABLE FOLLOW
ADD CONSTRAINT fk_FOLLOW_mem foreign KEY(FOLLOWING) references MEMBER (MEMCODE);
ALTER TABLE FOLLOW
ADD CONSTRAINT fk_FOLLOWER_mem foreign KEY(FOLLOWER) references MEMBER (MEMCODE);

-- ���ƿ� ���̺�
DROP TABLE BOALIKE;
CREATE TABLE BOALIKE(
    LIKEBOACODE NUMBER, -- �Խñ� ��ȣ
    LIKEMEMCODE NUMBER -- ȸ���ڵ�
);
ALTER TABLE BOALIKE
ADD CONSTRAINT fk_board_like foreign KEY(LIKEBOACODE) references board (boacode);
ALTER TABLE BOALIKE
ADD CONSTRAINT fk_board_like_mem foreign KEY(LIKEMEMCODE) references MEMBER (MEMCODE);

commit;
-- �Խù� �����丮 ���̺�
DROP TABLE BOARDHISTORY;
CREATE TABLE BOARDHISTORY(
    BHBOACODE NUMBER, -- �Խñ� �ڵ�
    BHMEMCODE NUMBER, -- ȸ���ڵ�
    BHDATE date -- ��¥
);
ALTER TABLE BOARDHISTORY
ADD CONSTRAINT fk_bh_board foreign KEY(BHBOACODE) references board (boacode);
ALTER TABLE BOARDHISTORY
ADD CONSTRAINT fk_bh_mem foreign KEY(BHMEMCODE) references member (memcode);

-- �α��� �����丮 ���̺�
DROP TABLE LOGINHISTORY;
CREATE TABLE LOGINHISTORY(
    LHMEMCODE NUMBER, -- ȸ�� �ڵ�
    LHDATE date, -- ������
    LHIP NVARCHAR2(20) -- ������
);
ALTER TABLE LOGINHISTORY
ADD CONSTRAINT fk_lh_mem foreign KEY(LHMEMCODE) references member (memcode);

-- ��ǰ ���̺�
DROP TABLE PRODUCT;
CREATE TABLE PRODUCT(
    PROCODE NUMBER PRIMARY KEY, -- ��ǰ �ڵ�
    PROBOACODE NUMBER, -- �Խñ� �ڵ�
    PRONAME NVARCHAR2(50), -- ��ǰ�̸�
    PROPRICE NUMBER, -- �ּ� �ݾ�
    PROSTARTDATE DATE, -- ��� ������
    PROENDDATE DATE, -- ��� ������
    PRODATE DATE
);
ALTER TABLE PRODUCT
ADD CONSTRAINT fk_product_boa foreign KEY(PROBOACODE) references board (boacode);

-- ��ǰ �ڵ� ������
DROP SEQUENCE PRO_SEQ;
CREATE SEQUENCE PRO_SEQ
       INCREMENT BY 1;
       
-- ��� ���̺�
DROP TABLE AUCTION;
CREATE TABLE AUCTION(
    AUCPROCODE NUMBER, -- ��ǰ �ڵ�
    AUCMEMCODE NUMBER, -- ȸ���ڵ�
    AUCPRICE NUMBER     -- �������
);
ALTER TABLE AUCTION
ADD CONSTRAINT fk_product_auc foreign KEY(AUCPROCODE) references PRODUCT (PROCODE);
ALTER TABLE AUCTION
ADD CONSTRAINT fk_auc_mem foreign KEY(AUCMEMCODE) references member (memcode);

-- ���� ���̺�
DROP TABLE SALES;
CREATE TABLE SALES(
    SALCODE NUMBER PRIMARY KEY, -- �����ڵ�
    SALMEMCODE NUMBER, -- ȸ�� �ڵ�
    SALNAME NVARCHAR2(10), -- ����Ʈ/�����/ȯ�� ����
    SALPRICE NUMBER, -- ����
    SALDATE date -- �Ǹŵ� ��¥
);
ALTER TABLE SALES
ADD CONSTRAINT fk_sale_mem foreign KEY(SALMEMCODE) references member (memcode);


-- ���� �ڵ� ������
DROP SEQUENCE SAL_SEQ;
CREATE SEQUENCE SAL_SEQ
       INCREMENT BY 1;
       
-- ���� ���� ���� ���̺�
DROP TABLE literature;
create table literature(
LITWORKCODE     NUMBER NOT NULL,
LITMETHOD       NVARCHAR2(5),
LITCOUNT        NUMBER, 
LITPRICE        NUMBER
);
ALTER TABLE literature
ADD CONSTRAINT fk_liter_work foreign KEY(LITWORKCODE) references workspace (workcode);


-- ���� �Խ��� ����� �ο�
DROP TABLE literaturePay;
create table literaturePay(
LITBoaCODE     NUMBER NOT NULL,
LITMEMCODE NUMBER NOT NULL,
LITDATE DATE Default sysdate
);
ALTER TABLE literaturePay
ADD CONSTRAINT fk_literpay_board foreign KEY(LITBoaCODE) references board (boacode);
ALTER TABLE literaturePay
ADD CONSTRAINT fk_literpay_mem foreign KEY(LITMEMCODE) references member (memcode);

commit;

-- memWorkspaceList
create OR REPLACE view memWorkspace
as
select w.workMemCode,
        w.workCode,
        w.workCateCode,
        w.workTitle,
        w.workIntro,
        w.workImgName,
        w.workTag,
        m.memName,
        m.memId,
        m.memProfileName,
        m.mempaygrade,
        m.memgrade,
        b.category,
        b.subcategory
from Workspace w
    inner join member m on m.memcode = w.workMemCode
    inner join BOCATEGORY b on b.catecode = w.workCateCode;

-- ��ũ�����̽�
CREATE or replace VIEW workspacelist AS 
SELECT memWorkspace.*, ROW_NUMBER() OVER(ORDER BY workcode DESC) AS RN
FROM memWorkspace;

-- memboard �� ����
create OR REPLACE view memboard
as
select  b.boaCode,
        b.boaCatecode,
        b.boaWorkcode,
        b.boaTitle,
        b.boaMemcode,
        b.boaContent,
        b.boaHit,
        b.boaDate,
        b.boaTag,
        b.boaFileName,
        b.boaBestImg,
        m.memName,
        m.memId,
        m.memProfileName,
        m.mempaygrade,
        m.memgrade,
        c.category,
        c.subcategory
from board b
    inner join member m on m.memcode = b.boaMemcode
    inner join BOCATEGORY c on c.catecode = b.boaCatecode;

---- �� ���� ----
-- �α��� ���� ��
CREATE OR REPLACE VIEW login
AS
SELECT m.memcode, m.memname, m.mempoint, m.memgrade  ,m.memprofilename, m.memstate, m.memPayGrade, a.autcode ,a.autgive, a.autsecu, a.autacco, a.autachat, a.autamail, a.autcategory
FROM MEMBER m, AUTHORITY a
WHERE m.memautcode = a.autcode;
-- �Ű� ��� ��
CREATE OR REPLACE VIEW REPORTLIST
AS 
SELECT REPORT.*, ROW_NUMBER() OVER(ORDER BY REPCODE DESC) AS RN
FROM REPORT;

CREATE OR REPLACE VIEW REPORTLIST2 
AS 
SELECT REPORT.*, ROW_NUMBER() OVER(ORDER BY REPCODE DESC) AS RN
FROM REPORT WHERE REPSTATE = 'ó�� ��';



-- ȸ����� ��
CREATE OR REPLACE VIEW MEMBERLIST 
AS 
SELECT MEMBER.*, ROW_NUMBER() OVER(ORDER BY MEMCODE DESC) AS RN
FROM MEMBER;


-------------------------------------------------- 02.03 �ؿ��� ��ȣ�� �߰��޶�� �� ��.
-- ������ ��
CREATE OR REPLACE VIEW MEMPROFILE
AS
SELECT NVL2(fo.FOLLOWNUM,fo.FOLLOWNUM,0) AS FOLLOW , NVL2(fower.FOLLOWERNUM,fower.FOLLOWERNUM,0) AS FOLLOWER, NVL2(bo.BOARDPOST,bo.BOARDPOST,0) AS BOARDPOSTS, m.MEMCODE,m.MEMNAME, m.MEMGRADE, m.MEMPAYGRADE, m.MEMPROFILENAME, m.MEMBACKGROUND, m.MEMINTRO FROM (member m 
LEFT OUTER JOIN (SELECT COUNT(*) AS FOLLOWNUM,FOLLOWING FROM FOLLOW GROUP BY FOLLOWING) fo 
ON m.MEMCODE = fo.FOLLOWING
LEFT OUTER JOIN (SELECT COUNT(*) AS FOLLOWERNUM,FOLLOWER FROM FOLLOW GROUP BY FOLLOWER) fower
ON m.MEMCODE = fower.FOLLOWER
LEFT OUTER JOIN (SELECT COUNT(*) AS BOARDPOST,BOAMEMCODE FROM BOARD GROUP BY BOAMEMCODE) bo
ON m.MEMCODE = bo.BOAMEMCODE
);


-------------------------------------------------------------------------- ��ġ�� �� �ؿ��� ��ȣ db
-- workcode ������ 
drop sequence workcode_seq;
create sequence workcode_seq increment by 1;

----------------------------------- �Խñ� ���̳� ----  
-- �� ������ �츮�� �̷��� �� �� �ִ� 
create OR REPLACE view finalWorkspaceList
as
select * from(
select * from 
(select NVL2(sum(likes),sum(likes),0) as likeNum,NVL2(sum(coment),sum(coment),0) as ComentNum,NVL2(sum(num3.boahit),sum(num3.boahit),0) as HitNum,count(num4.boacode) as BoardNum,wk.workCode as wkcd from(
(select NVL2(a.likes,a.likes,0) AS LIKES , b.* from (

select count(*) as likes,likeboacode from boalike  GROUP BY likeboacode) a 

RIGHT OUTER JOIN (select * from memboard 
) b on likeboacode = b.boacode) num1

inner join 
(select NVL2(d.coment,d.coment,0) AS coment , c.* from (
select count(*) as coment, comboacode from coment  GROUP BY comboacode) d 
RIGHT OUTER JOIN (select * from memboard 
) c on comboacode = c.boacode) num2
on num1.boacode = num2.boacode

inner join 
(select boahit,boacode from memboard)num3
on num1.boacode = num3.boacode

inner join 
(select boacode from memboard
)num4
on num1.boacode = num4.boacode

right outer join
(select workCode from memworkspace) wk
on num1.boaworkcode = wk.workCode
)GROUP BY wk.workCode)

)wk INNER Join  memworkspace mw ON wk.wkcd = mw.workCode;

-- boardlist ������ �� ����
create OR REPLACE view finalBoardList
as
select NVL2(a.likes,a.likes,0) AS LIKENum,NVL2(c.coment,c.coment,0) AS comentNum , b.* from
(select * from memboard )b
LEFT OUTER JOIN  
(select count(*) as likes,likeboacode from boalike  GROUP BY likeboacode) a 
on likeboacode = b.boacode
LEFT OUTER JOIN 
(select count(*) as coment, comboacode from coment  GROUP BY comboacode) c
on c.comboacode = b.boacode;
select count(*) as likes,likeboacode from boalike  GROUP BY likeboacode;
      
CREATE OR REPLACE VIEW WORKSPACELIST AS 
SELECT FINALWORKSPACELIST.*, ROW_NUMBER() OVER(ORDER BY workcode DESC) AS RN
FROM FINALWORKSPACELIST;



--------------------------------------------------------------- �ؿ����� �ÿ��̲� ----------------------

-------- ��� �����̺�--------
create OR REPLACE view MEMCOMENT
as
select
        c.COMCODE,
        c.COMBOACODE,
        c.COMMEMCODE,
        c.COMENT,
        c.COMDATE,
        c.COmodi,
        m.memName
from member m
    inner join COMENT c on c.COMMEMCODE = m.MEMCODE;
drop view memcoment;

create or replace view AUCMEMBER
as
select
        A.AUCPROCODE,
        A.AUCMEMCODE,
        A.AUCPRICE,
        M.MEMID,
        M.MEMNAME,
        M.MEMBIRTH,
        M.MEMGENDER,
        M.MEMADDR,
        M.MEMPHONE
from member m
    inner join AUCTION A on A.AUCMEMCODE = m.MEMCODE;



create or replace view PRODUCTBOARD
as
select
        P.PROCODE,
        P.PROBOACODE,
        P.PRONAME,
        P.PROPRICE,
        P.PROSTARTDATE,
        P.PROENDDATE,
        B.BOACATECODE,
        B.BOATITLE,
        B.BOAMEMCODE,
        B.BOACONTENT,
        B.BOAHIT,
        B.BOADATE,
        B.BOATAG,
        B.BOAFILENAME,
        B.BOABESTIMG,
        B.LIKENUM,
        B.COMENTNUM,
        B.CATEGORY,
        B.MEMNAME
from FINALBOARDLIST B
    inner join PRODUCT P on P.PROBOACODE = B.BOACODE;  

-- ������ ����
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'�׸�','����');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'�׸�','����');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'�׸�','�˾�Ʈ');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'�׸�','����̼�');

INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'����','��');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'����','�߶��');

INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'����','�Ҽ�');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'����','����');

INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'�м�','�ƿ���');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'�м�','����');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'�м�','����');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'�м�','�Ǽ�����');

INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'DIY','����');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'DIY','�̴Ͼ�ó');
commit;

