create table member(
	name varchar2(30) not null,
	id varchar2(30) not null,
	pwd varchar2(20) not null,
	pwdCk varchar2(20),
	email varchar2(50) not null,
	gender varchar(10),
	tel varchar2(50),
	adNum number,
	address varchar2(150),
	CONSTRAINT member_id_pk PRIMARY KEY(id)
);

create table item(
	item_no number not null,
	name varchar2(100) not null,
	price number not null, 
	constraint item_no_pk primary key (item_no)
);

insert into item values(item_seq.Nextval, '벨벳틴 오버 바시티 자켓 [스틸블루]', 239000);
insert into item values(item_seq.Nextval, '레트로 콤비 윈드 브레이커 [페일민트]', 168000);
insert into item values(item_seq.Nextval, '퀼트 숏 패딩 [아이보리]', 159000);
insert into item values(item_seq.Nextval, 'MZ 매거진 니트 [차콜]', 79000);
insert into item values(item_seq.Nextval, '플랜트 아가일 니트 집업 [네이비]', 139000);
insert into item values(item_seq.Nextval, '램스울 크롭 가디건 [체리핑크]', 66000);
insert into item values(item_seq.Nextval, '스탠다드 롱 슬리브 [화이트]', 45000);
insert into item values(item_seq.Nextval, '오버핏 포켓 셔츠 [화이트]', 49000);
insert into item values(item_seq.Nextval, '하이 넥 셔링 목폴라 [화이트]', 59000);
insert into item values(item_seq.Nextval, 'MZ 리벳 팬츠 [블랙]', 129000);
insert into item values(item_seq.Nextval, '스포티 포켓 미니 스커트', 58800);
insert into item values(item_seq.Nextval, '스웨이드 슬릿 스커트 [크림]', 79000);
insert into item values(item_seq.Nextval, '써클 실버 링귀걸이', 35000);
insert into item values(item_seq.Nextval, '마이부 달링 귀걸이', 27000);
insert into item values(item_seq.Nextval, '비포하트 링귀걸이', 12500);

select * from item;

update

CREATE SEQUENCE item_seq
        START WITH 1
        maxvalue 100
        INCREMENT BY 1
        nocache;

select * from member;

drop table member;
drop table item;

select pwd from member where id='qaz5167';