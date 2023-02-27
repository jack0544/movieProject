CREATE TABLE MEMBERM(
    MEMID       NVARCHAR2(20) PRIMARY KEY,   -- 회원 IDlll
    MEMPW       NVARCHAR2(100),      -- 회원 PW
    MEMNAME     NVARCHAR2(5),        -- 회원 이름
    MEMBIRTH    NVARCHAR2(10),       -- 회원 생일
    MEMPHONE    NVARCHAR2(20),       -- 회원 연락처
    MEMPROFILENAME  NVARCHAR2(50),    -- 회원 프로필사진
    MEMCOUPON NVARCHAR2(30)           -- 회원 쿠폰
);

-- MOVIEM(영화)테이블 생성 12.15
CREATE TABLE MOVIEM(
    MOVNAME NVARCHAR2(50) PRIMARY KEY,  -- 영화이름
    MOVGENRE NVARCHAR2(20),  -- 영화장르
    MOVSTAR NVARCHAR2(20),   -- 영화평점
    MOVAGE NVARCHAR2(30),    -- 영화관람가
    MOVDATE NVARCHAR2(30),   -- 영화개봉일
    MOVDIRECTOR NVARCHAR2(30),   -- 영화감독
    MOVACTOR1 NVARCHAR2(30),     -- 출연배우1
    MOVACTOR2 NVARCHAR2(30),     -- 출연배우2   
    MOVACTOR3 NVARCHAR2(30),     -- 출연배우3
    MOVACTOR4 NVARCHAR2(30),     -- 출연배우4       // 12.05    
    MOVACTORPIC1 NVARCHAR2(500),     -- 출연배우1 사진
    MOVACTORPIC2 NVARCHAR2(500),     -- 출연배우2 사진  
    MOVACTORPIC3 NVARCHAR2(500),     -- 출연배우3 사진
    MOVACTORPIC4 NVARCHAR2(500),     -- 출연배우4 사진 // 12.05
    MOVRANK NUMBER,             -- 영화순위
    MOVRUNTIME NVARCHAR2(30),   -- 영화러닝타임
    MOVCOUNTRY NVARCHAR2(30),   -- 영화제작국가
    MOVCONTEXT NVARCHAR2(1000),  -- 영화줄거리
    MOVMAINPICTURE NVARCHAR2(500),   -- 영화포스터
    MOVPICTURE1 NVARCHAR2(500),      -- 영화 사진1
    MOVPICTURE2 NVARCHAR2(500),      -- 영화 사진2
    MOVPICTURE3 NVARCHAR2(500),      -- 영화 사진3
    MOVPICTURE4 NVARCHAR2(500),      -- 영화 사진4
    MOVPICTURE5 NVARCHAR2(500),      -- 영화 사진5
    MOVPICTURE6 NVARCHAR2(500),      -- 영화 사진6   // 12.05
    MOVTICKETS NVARCHAR2(50),              -- 영화 예매 수
    MOVPESCORE NVARCHAR2(30),              -- Pre Egg 점수   // 12.05
    MOVGESCORE NVARCHAR2(30),              -- Golden Egg 점수    // 12.05
    MOVTEASERURL NVARCHAR2(500)     -- 영화 티져영상 URL   // 12.05
);

-- THEATERM(상영관)테이블 생성 12.15
CREATE TABLE THEATERM(
    THENAME NVARCHAR2(20),      -- 극장 이름
    THEROOM NVARCHAR2(5),       -- 극장 0관
    THECITY NVARCHAR2(20),      -- 극장이 있는 도시
    CONSTRAINT THE_PK PRIMARY KEY (THENAME, THEROOM)
);

CREATE TABLE TIMEMOVIEM(
    TIMMOVNAME NVARCHAR2(50),       -- 해당 상영시간 영화 이름
    TIMTHENAME NVARCHAR2(20),       -- 해당 상영시간 극장 이름
    TIMTHEROOM NVARCHAR2(5),        -- 해당 상영시간 극장 0관
    TIMTHECITY NVARCHAR2(20),       -- 해당 상영시간 극장이 있는 도시 
    TIMSTARTDATE NVARCHAR2(30),     -- 해당 상영시간 날짜(년~일까지만)
    TIMCURTIME NVARCHAR2(20),       -- 해당 상영시간 셀렉트된 시간대
    TIMSTARTTIME1 NVARCHAR2(20),     -- 해당 상영시간 시작 시간
    TIMSTARTTIME2 NVARCHAR2(20),     -- 해당 상영시간 시작 시간
    TIMSTARTTIME3 NVARCHAR2(20),     -- 해당 상영시간 시작 시간
    TIMSTARTTIME4 NVARCHAR2(20),     -- 해당 상영시간 시작 시간
    TIMLEFTSEAT NUMBER,             -- 해당 상영시간 남은 좌석 수 
    TIMLEFTLIST NVARCHAR2(350),     -- 해당 상영시간 좌석 목록
    TIMBACKPIC NVARCHAR2(500),      -- 해당 상영 뒷배경 사진 
    TIMPOSTER NVARCHAR2(500),        -- 포스터
    CONSTRAINT TIM_PK PRIMARY KEY (TIMMOVNAME , TIMTHENAME , TIMTHEROOM , TIMCURTIME, TIMSTARTDATE)
);


-- COMMENTM(코멘트)테이블 생성 12.15
CREATE TABLE COMMENTM(
    COMNUM      NUMBER,-- 댓글번호(기본키)
    COMMOVIE    NVARCHAR2(50),-- 영화명(기본키)
    COMWRITER   NVARCHAR2(20), -- 작성자
    COMPROFILENAME  NVARCHAR2(50),-- 회원사진
    COMDATE     NVARCHAR2(20) , -- 작성시간
    COMCONTENT  NVARCHAR2(300),-- 댓글내용
    COMSTAR     NUMBER,-- 평점
    COMGOOD     NUMBER, -- 좋아요 수
    COMBAD      NUMBER, -- 싫어요 수
    CONSTRAINT COM_PK PRIMARY KEY (COMNUM, COMMOVIE)
);
delete 
-- COMMENTM SEQ(댓글번호 시퀀스) 생성 12.15
CREATE SEQUENCE COM_SEQ
       INCREMENT BY 1
       START WITH 1
       NOCYCLE;

-- TICKETM(티켓) 테이블 생성 12.15
CREATE TABLE TICKETM(
    TICPIC NVARCHAR2(500), -- 포스터 사진
    
    TICID NVARCHAR2(50), -- 아이디
    
    TICNUM NUMBER primary key, -- 예매번호
    
    TICNAME NVARCHAR2(30), -- 회원명
    
    TICMOVNAME NVARCHAR2(50), -- 영화이름
    
    TICTHENAME NVARCHAR2(20), -- 극장명
    
    TICTHEROOM NVARCHAR2(30), -- 상영관
    
    TICSTARTDATE NVARCHAR2(20), -- 예매한 날짜
    
    TICTIMSTART NVARCHAR2(50), -- 상영시간대
    
    TICSEATNUM NVARCHAR2(350), -- 좌석번호
    
    TICMOVPRICE NUMBER -- 영화 가격
);

-- MONEY(돈) 테이블 생성 12.15
CREATE TABLE MONEYM(
    MONID NVARCHAR2(20),
    MONPW NVARCHAR2(100),
    MONMONEY NUMBER
);
-- PAYM(결제) 테이블 생성
    CREATE TABLE PAYM(
    
    PAYPIC NVARCHAR2(500), -- 해당 포스터 사진
    
    PAYID NVARCHAR2(20), -- 아이디
    
    PAYNAME NVARCHAR2(20), -- 회원명
    
    PAYMOVNAME NVARCHAR2(50), -- 영화이름
    
    PAYTHENAME NVARCHAR2(20), -- 극장명
    
    PAYTHEROOM NVARCHAR2(20), -- 상영관
    
    PAYSTARTDATE NVARCHAR2(20), -- 예매한 날짜
    
    PAYTIMSTART NVARCHAR2(50), -- 상영시간대
    
    PAYSEATNUM NVARCHAR2(350), -- 좌석번호
    
    PAYMOVPRICE NUMBER, -- 영화 가격
    
    PAYLEFTLIST NVARCHAR2(350) -- 남은 좌석 리스트
    
);

-- 크롤링 시 ora-12519 오류날때!
-- CMD창에
-- C:￦> sqlplus sys/오라클 설치 시 입력한 암호 as sysdba 하고
-- SQL> shutdown immediate
-- SQL> startup 
-- 이후 oracle에서 
-- ALTER system SET processes=1500 scope=spfile;
-- commit;
-- SHOW PARAMETER PROCESSES;


INSERT INTO THEATERM VALUES ('부평점',3,'인천');
INSERT INTO THEATERM VALUES ('미추홀점',3,'인천');
INSERT INTO THEATERM VALUES ('강남점',3,'서울');
INSERT INTO THEATERM VALUES ('반포점',3,'서울');
INSERT INTO THEATERM VALUES ('부천점',3,'경기');
INSERT INTO THEATERM VALUES ('남양주점',3,'경기');

