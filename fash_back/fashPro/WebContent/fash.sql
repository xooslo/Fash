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
	name varchar2(100) not null,
	item_no number not null, 
	price number not null, 
	constraint item_no_pk primary key (item_no)
);

select * from member;

drop table member;
drop table cart;
drop table contents;

select pwd from member where id='qaz5167';