-- 권한 테이블
select * from finalboardlist order by boacode DESC;
DROP TABLE AUTHORITY;
CREATE TABLE AUTHORITY(
    AUTCODE NUMBER PRIMARY KEY, -- 권한 코드
    AUTNAME NVARCHAR2(15) UNIQUE, --권한 이름
    AUTGIVE NUMBER, -- 권한 부여
    AUTSECU NUMBER, -- 회원 차단
    AUTACCO NUMBER, -- 재정 정보 열람
    AUTACHAT NUMBER, -- 관리자 문의
    AUTAMAIL NUMBER, -- 공지메일
    AUTCATEGORY NUMBER -- 카테고리 생성
);
INSERT INTO AUTHORITY VALUES(0,'유저',0,0,0,0,0,0);
-- 권한 시퀀스
DROP SEQUENCE AUT_SEQ;
CREATE SEQUENCE AUT_SEQ
       INCREMENT BY 1;

-- 회원테이블
DROP TABLE MEMBER;
CREATE TABLE MEMBER(
    MEMCODE NUMBER PRIMARY KEY, -- 회원코드
    MEMID NVARCHAR2(50) UNIQUE, -- 회원아이디
    MEMPW NVARCHAR2(150), -- 회원 비밀번호
    MEMNAME NVARCHAR2(10) UNIQUE, -- 회원 이름
    MEMBIRTH NVARCHAR2(20), -- 회원 생일
    MEMGENDER NVARCHAR2(5), -- 회원 성별
    MEMADDR NVARCHAR2(50), -- 회원 주소
    MEMPHONE NVARCHAR2(20), -- 회원 연락처
    MEMPROFILENAME NVARCHAR2(150), -- 회원 프로필 사진
    MEMGRADE NVARCHAR2(10), -- 회원 등급
    MEMPAYGRADE NVARCHAR2(10), -- 회원 맴버쉽
    MEMSTATE NVARCHAR2(10), -- 회원 상태
    MEMAUTCODE NUMBER, -- 회원권한
    MEMPOINT NUMBER, -- 회원 포인트
    MEMBACKGROUND NVARCHAR2(150),-- 회원 배경 사진
    MEMINTRO NVARCHAR2(150), --회원 소개
    MEMDATE DATE -- 회원가입일
);
ALTER TABLE MEMBER
ADD CONSTRAINT fk_aut foreign KEY(MEMAUTCODE) references AUTHORITY (AUTCODE);
 INSERT INTO MEMBER VALUES (0, 'not@fish.co.kr', '213', '없음', '미입력', '미입력', '미입력', '미입력', 'default.png', '실버', '없음', '미인증', 0, 0,'default.jpg','소개글을 작성해주세요',sysdate);
 
-- 회원 시퀀스
DROP SEQUENCE MEM_SEQ;
CREATE SEQUENCE MEM_SEQ
       INCREMENT BY 1;

-- 포인트 적립 및 사용 내역
DROP TABLE POINTHISTORY;
CREATE TABLE POINTHISTORY(
    POIMEMCODE NUMBER, -- 회원 코드
    POIUPDATE NUMBER, -- 변동 내역
    POIDATE date -- 변동 날짜
);
ALTER TABLE POINTHISTORY
ADD CONSTRAINT fk_poi_mem foreign KEY(POIMEMCODE) references MEMBER (MEMCODE);

-- 게시판 카테고리 테이블
DROP TABLE BOCATEGORY;
CREATE TABLE BOCATEGORY(
    CATECODE NUMBER PRIMARY KEY, -- 카테고리 코드
    CATEGORY NVARCHAR2(10), -- 카테고리
    SUBCATEGORY NVARCHAR2(10) -- 서브 카테고리
);

-- 카테고리 코드 시퀀스
DROP SEQUENCE CATE_SEQ;
CREATE SEQUENCE CATE_SEQ
       INCREMENT BY 1;


-- 워크 스페이스
DROP TABLE WORKSPACE;
CREATE TABLE WORKSPACE(
    WORKCODE NUMBER PRIMARY KEY, -- 워크 스페이스 코드
    WORKCATECODE NUMBER, -- 카테고리 코드
    WORKMEMCODE NUMBER, -- 회원 코드
    WORKTITLE NVARCHAR2(50), -- 제목
    WORKINTRO NVARCHAR2(50), -- 설명
    WORKIMGNAME NVARCHAR2(100), -- 대표 이미지
    WORKTAG NVARCHAR2(150) -- 태그
);
INSERT INTO BOCATEGORY VALUES(0,'없음','없음');
INSERT INTO WORKSPACE VALUES(0,0,0,'없음','없음','없음','없음');


ALTER TABLE WORKSPACE
ADD CONSTRAINT fk_work_mem foreign KEY(WORKMEMCODE) references MEMBER (MEMCODE);
ALTER TABLE WORKSPACE
ADD CONSTRAINT fk_work_cate foreign KEY(WORKCATECODE) references BOCATEGORY (CATECODE);


-- 워크스페이스 코드 시퀀스
DROP SEQUENCE WORK_SEQ;
CREATE SEQUENCE WORK_SEQ
       INCREMENT BY 1;

-- 신고 테이블
DROP TABLE REPORT;
CREATE TABLE REPORT(
    REPCODE NUMBER PRIMARY KEY, -- 신고 코드
    REPSTATE NVARCHAR2(10), -- 처리 상태
    REPTITLE NVARCHAR2(50), -- 신고 제목
    REPMEMCODE NUMBER, -- 회원 코드
    REPCONTENT NVARCHAR2(50), -- 신고 내용
    REPFILENAME NVARCHAR2(150) -- 첨부 사진
);
ALTER TABLE REPORT
ADD CONSTRAINT fk_report_mem foreign KEY(REPMEMCODE) references MEMBER (MEMCODE);

-- 신고 코드 시퀀스
DROP SEQUENCE REP_SEQ;
CREATE SEQUENCE REP_SEQ
       INCREMENT BY 1;


       
-- 게시물 테이블
DROP TABLE BOARD;
CREATE TABLE BOARD(
    BOACODE NUMBER PRIMARY KEY, -- 게시글 코드
    BOACATECODE NUMBER, -- 카테고리 코드
    BOAWORKCODE NUMBER, -- 워크스페이스 코드
    BOATITLE NVARCHAR2(100), -- 제목
    BOAMEMCODE NUMBER, -- 회원 코드
    BOACONTENT NVARCHAR2(50), -- 내용
    BOAHIT NUMBER, -- 조회수
    BOADATE date, -- 게시 날짜
    BOATAG NVARCHAR2(150), -- 게시글 태그
    BOAFILENAME NVARCHAR2(50), -- 첨부 파일
    BOABESTIMG NVARCHAR2(100) -- 대표 사진
);
ALTER TABLE BOARD
ADD CONSTRAINT fk_board_mem foreign KEY(BOAMEMCODE) references MEMBER (MEMCODE);
ALTER TABLE BOARD
ADD CONSTRAINT fk_board_work foreign KEY(BOAWORKCODE) references WORKSPACE (WORKCODE);

--------댓글 시퀀스------------------
CREATE SEQUENCE COMMENT_SEQ  INCREMENT BY 1;

------------ 게시글 번호 시퀀스---------------------
CREATE SEQUENCE BO_SEQ  INCREMENT BY 1;

-- 댓글 테이블
DROP TABLE COMENT;
CREATE TABLE COMENT(
    COMCODE NUMBER PRIMARY KEY, -- 댓글 코드
    COMBOACODE NUMBER, -- 게시글 코드
    COMMEMCODE NUMBER, -- 회원코드
    COMENT NVARCHAR2(50), -- 내용
    COMDATE date, -- 작성일
    COMODI NUMBER

);
ALTER TABLE COMENT
ADD CONSTRAINT fk_comen_mem foreign KEY(COMMEMCODE) references MEMBER (MEMCODE);

-- 팔로잉& 팔로워 테이블
DROP TABLE FOLLOW;
CREATE TABLE FOLLOW(
    FOLLOWING NUMBER, -- 팔로우 하는 사람
    FOLLOWER NUMBER -- 팔로우 당하는 사람
);
ALTER TABLE FOLLOW
ADD CONSTRAINT fk_FOLLOW_mem foreign KEY(FOLLOWING) references MEMBER (MEMCODE);
ALTER TABLE FOLLOW
ADD CONSTRAINT fk_FOLLOWER_mem foreign KEY(FOLLOWER) references MEMBER (MEMCODE);

-- 좋아요 테이블
DROP TABLE BOALIKE;
CREATE TABLE BOALIKE(
    LIKEBOACODE NUMBER, -- 게시글 번호
    LIKEMEMCODE NUMBER -- 회원코드
);
ALTER TABLE BOALIKE
ADD CONSTRAINT fk_board_like foreign KEY(LIKEBOACODE) references board (boacode);
ALTER TABLE BOALIKE
ADD CONSTRAINT fk_board_like_mem foreign KEY(LIKEMEMCODE) references MEMBER (MEMCODE);

commit;
-- 게시물 히스토리 테이블
DROP TABLE BOARDHISTORY;
CREATE TABLE BOARDHISTORY(
    BHBOACODE NUMBER, -- 게시글 코드
    BHMEMCODE NUMBER, -- 회원코드
    BHDATE date -- 날짜
);
ALTER TABLE BOARDHISTORY
ADD CONSTRAINT fk_bh_board foreign KEY(BHBOACODE) references board (boacode);
ALTER TABLE BOARDHISTORY
ADD CONSTRAINT fk_bh_mem foreign KEY(BHMEMCODE) references member (memcode);

-- 로그인 히스토리 테이블
DROP TABLE LOGINHISTORY;
CREATE TABLE LOGINHISTORY(
    LHMEMCODE NUMBER, -- 회원 코드
    LHDATE date, -- 접속일
    LHIP NVARCHAR2(20) -- 아이피
);
ALTER TABLE LOGINHISTORY
ADD CONSTRAINT fk_lh_mem foreign KEY(LHMEMCODE) references member (memcode);

-- 상품 테이블
DROP TABLE PRODUCT;
CREATE TABLE PRODUCT(
    PROCODE NUMBER PRIMARY KEY, -- 상품 코드
    PROBOACODE NUMBER, -- 게시글 코드
    PRONAME NVARCHAR2(50), -- 상품이름
    PROPRICE NUMBER, -- 최소 금액
    PROSTARTDATE DATE, -- 경매 시작일
    PROENDDATE DATE, -- 경매 마감일
    PRODATE DATE
);
ALTER TABLE PRODUCT
ADD CONSTRAINT fk_product_boa foreign KEY(PROBOACODE) references board (boacode);

-- 상품 코드 시퀀스
DROP SEQUENCE PRO_SEQ;
CREATE SEQUENCE PRO_SEQ
       INCREMENT BY 1;
       
-- 경매 테이블
DROP TABLE AUCTION;
CREATE TABLE AUCTION(
    AUCPROCODE NUMBER, -- 상품 코드
    AUCMEMCODE NUMBER, -- 회원코드
    AUCPRICE NUMBER     -- 희망가격
);
ALTER TABLE AUCTION
ADD CONSTRAINT fk_product_auc foreign KEY(AUCPROCODE) references PRODUCT (PROCODE);
ALTER TABLE AUCTION
ADD CONSTRAINT fk_auc_mem foreign KEY(AUCMEMCODE) references member (memcode);

-- 매출 테이블
DROP TABLE SALES;
CREATE TABLE SALES(
    SALCODE NUMBER PRIMARY KEY, -- 매출코드
    SALMEMCODE NUMBER, -- 회원 코드
    SALNAME NVARCHAR2(10), -- 포인트/멤버쉽/환급 선택
    SALPRICE NUMBER, -- 가격
    SALDATE date -- 판매된 날짜
);
ALTER TABLE SALES
ADD CONSTRAINT fk_sale_mem foreign KEY(SALMEMCODE) references member (memcode);


-- 매출 코드 시퀀스
DROP SEQUENCE SAL_SEQ;
CREATE SEQUENCE SAL_SEQ
       INCREMENT BY 1;
       
-- 문학 결제 정보 테이블
DROP TABLE literature;
create table literature(
LITWORKCODE     NUMBER NOT NULL,
LITMETHOD       NVARCHAR2(5),
LITCOUNT        NUMBER, 
LITPRICE        NUMBER
);
ALTER TABLE literature
ADD CONSTRAINT fk_liter_work foreign KEY(LITWORKCODE) references workspace (workcode);


-- 문학 게시판 사용한 인원
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

-- 워크스페이스
CREATE or replace VIEW workspacelist AS 
SELECT memWorkspace.*, ROW_NUMBER() OVER(ORDER BY workcode DESC) AS RN
FROM memWorkspace;

-- memboard 뷰 생성
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

---- 뷰 생성 ----
-- 로그인 세션 뷰
CREATE OR REPLACE VIEW login
AS
SELECT m.memcode, m.memname, m.mempoint, m.memgrade  ,m.memprofilename, m.memstate, m.memPayGrade, a.autcode ,a.autgive, a.autsecu, a.autacco, a.autachat, a.autamail, a.autcategory
FROM MEMBER m, AUTHORITY a
WHERE m.memautcode = a.autcode;
-- 신고 목록 뷰
CREATE OR REPLACE VIEW REPORTLIST
AS 
SELECT REPORT.*, ROW_NUMBER() OVER(ORDER BY REPCODE DESC) AS RN
FROM REPORT;

CREATE OR REPLACE VIEW REPORTLIST2 
AS 
SELECT REPORT.*, ROW_NUMBER() OVER(ORDER BY REPCODE DESC) AS RN
FROM REPORT WHERE REPSTATE = '처리 전';



-- 회원목록 뷰
CREATE OR REPLACE VIEW MEMBERLIST 
AS 
SELECT MEMBER.*, ROW_NUMBER() OVER(ORDER BY MEMCODE DESC) AS RN
FROM MEMBER;


-------------------------------------------------- 02.03 밑에는 성호가 추가달라고 한 것.
-- 프로필 뷰
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


-------------------------------------------------------------------------- 합치기 전 밑에는 준호 db
-- workcode 시퀀스 
drop sequence workcode_seq;
create sequence workcode_seq increment by 1;

----------------------------------- 게시글 파이널 ----  
-- 자 만들어보자 우리의 미래를 할 수 있다 
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

-- boardlist 마지막 뷰 생성
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



--------------------------------------------------------------- 밑에부터 시원이꺼 ----------------------

-------- 댓글 뷰테이블--------
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

-- 데이터 삽입
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'그림','동양');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'그림','서양');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'그림','팝아트');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'그림','현대미술');

INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'음악','랩');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'음악','발라드');

INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'문학','소설');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'문학','웹툰');

INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'패션','아우터');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'패션','상의');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'패션','하의');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'패션','악세서리');

INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'DIY','가구');
INSERT INTO BOCATEGORY VALUES(CATE_SEQ.nextval,'DIY','미니어처');
commit;

