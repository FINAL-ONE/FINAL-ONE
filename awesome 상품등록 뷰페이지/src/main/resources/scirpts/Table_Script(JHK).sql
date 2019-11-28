--- SYSTEM 권한 부여 -- 
create user test1 identified by awesome;
grant connect to awesome;
grant resource to awesome;
grant create view to awesome;


--- drop ---- 
drop table member; 
drop sequence seq_uno;
    

-- 유저시퀀스
CREATE SEQUENCE  "SEQ_UNO"  MINVALUE 1 MAXVALUE 10000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ; 	


----멤버 테이블 -- 
CREATE TABLE MEMBER (
	MID	NUMBER	NOT NULL PRIMARY KEY,
	USER_ID	VARCHAR2(12)	NOT NULL,
	USER_PWD	VARCHAR2(15)	NOT NULL,
	USER_NAME	VARCHAR2(15)	NOT NULL,
	GENDER	VARCHAR2(3)	 DEFAULT '여',
	BIRTHDAY	VARCHAR2(8)	NULL,
	PHONE	VARCHAR2(13)	NOT NULL,
	EMAIL	VARCHAR2(100)	NOT NULL,
	ADDRESS	VARCHAR2(100)	NOT NULL,
	POINT NUMBER	DEFAULT 1000,
	ENROLL_DATE	DATE	NOT NULL,
	MODIFY_DATE	DATE	NOT NULL,
    ADMIN VARCHAR2(1) DEFAULT 'N' NOT NULL,  
	STATUS	VARCHAR2(1)	 DEFAULT 'Y'	NOT NULL,
    CONSTRAINT MEMBER_GENDER_CK CHECK (GENDER in ('남', '여'))
);


-- 관리자 생성 -- 
insert into member values(SEQ_UNO.NEXTVAL, 'admin', '11', '관리자', '남', '19920423', '01046867423','hokwan92@naver.com','서대문구',default, sysdate, sysdate, 'Y',default);