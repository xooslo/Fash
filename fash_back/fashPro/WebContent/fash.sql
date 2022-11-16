create table member(
	name varchar2(30) not null,
	id varchar2(30) not null,
	pwd varchar2(20) not null,
	pwdCk varchar2(20),
	email varchar2(50) not null,
	gender varchar(10),
	tel varchar2(50),
	address varchar2(70),
	CONSTRAINT member_id_pk PRIMARY KEY(id)
);

create table cart(
	userid varchar2(30),
	cart_id number not null, 
	product_id number not null, 
	amount number default 0,
	constraint cart_userid_fk foreign key(userid) references member(id),
	constraint cart_id_pk primary key (cart_id)
);

select * from member;

drop table member;
drop table contents;

select pwd from member where id='qaz5167';