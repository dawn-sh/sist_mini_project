--7월 10일 복습 문제
--Q1. emp에서 ename을 empname으로 바꾸세요
alter table emp rename column ename to empname;
select * from emp;
rollback;

--Q2.gift에서 7번 노트북을 아이패드로 바꾸세요
select * from gift;
update gift set gname='아이패드' where g_start=600001; --==where gno=7;

--Q3.gift에 10번 아이폰 9000001-10000000 한 행을 추가하세요
insert into gift values(10,'아이폰',9000001,10000000);

--Q4.member에서 1003 서새알 멤버를 삭제하시오
select * from member;
delete from member where name='서새알';

--Q5.emp에서 입사일이 02/01/23 인 사원의 이름,부서번호,급여를 출력하시오
select * from emp;
select empname 이름, deptno 부서번호, sal 급여 from emp where hiredate='82/01/23';

--Q6.emp에서 직무별로 최대급여, 최소급여, 총급여, 평균급여를 출력하시오
select job 직무, max(sal) 최대급여, min(sal) 최소급여, sum(sal) 총급여, round(avg(sal),1) 평균급여 from emp group by job;

---------------------------------------------------------------------------------------------------------------------------------

--Join

--1.emp와 dept 를 join해서 emp사람들의 부서명을 구해보자
--사원명   부서명

--case1
select e.empname, d.dname -- 중복되는 이름이 없는 것 ex) empname 앞에 e. / dname 앞에 d. 안부텨도됨
from emp e,dept d
where e.deptno=d.deptno; --**중요**

--case2
select empname, dname --테이블의 고유명일경우 e. d. 생략가능
from emp e,dept d
where e.deptno=d.deptno;



--student 와 professor를 조인하여 다음과 같이 출력하시오
--학번        학생명     지도교수명
select * from student;
select studno 학번, s.name 학생명, p.name 교수명
from student s, professor p
where s.profno=p.profno;


--학번     학생명    제1전공명   제2전공명
select s.studno 학번, s.name 학생명, d.dname 제1전공명
from student s, department d
where s.deptno1=d.deptno;


--교수명 직급 학과명
select * from professor;
select name 교수명, p.position 직급, d.dname 학과명
from professor p, department d
where p.deptno=d.deptno;


--사원번호  사원명     근무도시
--e1111   smith    new york
select * from emp;
select empno 사원번호, empname 사원명, loc 근무도시
from emp e, dept d
where e.deptno=d.deptno;



--panmae product join
--판매일자  이름  전체 판매액
select * from panmae;
select p1.p_date 판매일자, p2.p_name 이름, p1.p_total "전체 판매액"
from panmae p1, product p2
where p1.p_code=p2.p_code;



---------------------------------------------------------------------------------------------------------------------


--primary 키 와 foreign 키를 생성한 조인테이블(부모,자식) 만들어보기

--시퀀스
create sequence seq_shop;

--shop테이블 (부모테이블)
create table shop(shopnum number(5) primary key,
sangname varchar2(30), color varchar2(20));

--5개의 상품추가
insert into shop values(seq_shop.nextval,'요가매트','pink');
insert into shop values(seq_shop.nextval,'아령','black');
insert into shop values(seq_shop.nextval,'레깅스','beige');
insert into shop values(seq_shop.nextval,'져지','white');
insert into shop values(seq_shop.nextval,'양말','yellow');
commit;

--비교하기 위해 2개 생성
--cart1...상품정보는 shop테이블의 shop_num값을 외부키로 지정
--부모 열이름에 설정해준 이름과 달라야함/ 자식들은 무관
--부모의 primary key와 자식의 foreign key를 조인해줄 이름은 같아야함
--부모테이블에 number(5)로 하면 똑같이 하는게 좋음 다르게해도 무관//연결하려면 REFERENCES 테이블(자식테이블 열이름) 필수
create table cart1(idx number(5) primary key,
shopnum number(5) CONSTRAINT cart_fk_shopnum REFERENCES shop(shopnum),
cnt number(5), guipday date);




--cart2...상품정보는 shop테이블의 shop_num값을 외부키로 지정
--부모테이블의 상품을 지우면 그 상품과 연결괸 카트를 자동으로 지워준다 ... on delete cascade
--자식끼리는 이름 같아도 무관
create table cart2(idx number(5) primary key,
shopnum number(5) REFERENCES shop(shopnum) on DELETE CASCADE,
cnt number(5),guipday date);

--cart1에 상품추가_1번
insert into cart1 values(seq_shop.nextval,1,2,sysdate);
insert into cart1 values(seq_shop.nextval,21,4,sysdate);
insert into cart1 values(seq_shop.nextval,22,1,sysdate);
insert into cart1 values(seq_shop.nextval,24,2,sysdate);
insert into cart1 values(seq_shop.nextval,23,1,sysdate);

delete from cart2 where shopnum=23;


--cart2에 상품추가
insert into cart2 values(seq_shop.nextval,22,1,sysdate);
insert into cart2 values(seq_shop.nextval,21,4,sysdate);
insert into cart2 values(seq_shop.nextval,1,1,sysdate);
insert into cart2 values(seq_shop.nextval,23,2,sysdate);
insert into cart2 values(seq_shop.nextval,24,1,sysdate);


--cart1: 부모 1,21,24 존재      cart2: 부모: 1,21,22,24

--shop의 1번 상품 삭제 가능?
--불가능 -> 무결성 제약조건(TJDGUS.CART_FK_SHOPNUM)이 위배되었습니다- 자식 레코드가 발견되었습니다
delete from shop where shopnum=1;


--cart2에서 22번데이터 지워보기
--ON DELETE CASCADE 때문에 제약없이 삭제가 된다
--cart2 테이블 만들때 on delete cascade로 만들었기에 부모에 있는 상품 삭제시 조인되어있는 자식 테이블에 있는 상품도 동시 삭제가능
delete from shop where shopnum=22;

--cart1에 담긴 상품을 shop테이블과 join해서 자세히 출력
--방법1
select c1.idx, s.shopnum, s.sangname, s.color, cnt, c1.guipday
from shop s, cart1 c1
where s.shopnum=c1.shopnum;

--방법2 --foreign key로 연결된 열이름 앞에만 s. 붙여주면된다
select idx, s.shopnum, sangname, color, cnt, guipday
from shop s, cart1 c1
where s.shopnum=c1.shopnum;

rollback;

commit;


select * from shop;
select * from cart1;
select * from cart2;

--------------------------------------------------------------------------------------------------------------------------------

create sequence seq_menu;

--부모테이블
create table menu(m_num number(5) primary key,
m_name varchar2(30),
price number(30));

insert into menu values(seq_menu.nextval,'스파게티',6000);
insert into menu values(seq_menu.nextval,'돈까스',7000);
insert into menu values(seq_menu.nextval,'삼겹살',11000);
insert into menu values(seq_menu.nextval,'김치찌개',6500);
insert into menu values(seq_menu.nextval,'된장찌개',5500);
insert into menu values(seq_menu.nextval,'피자',15000);


--자식테이블(자식테이블에 연결된 부모가 있어도 부모를 삭제할 수 있으며 부모테이블 삭제시 자동으로 자식삭제)
create table myorder(o_num number(5) primary key,
m_num number(5) REFERENCES menu(m_num) on delete cascade,
cnt number(5),
o_date date);

insert into myorder values(seq_menu.nextval,1,3,sysdate);
insert into myorder values(seq_menu.nextval,2,6,sysdate);
insert into myorder values(seq_menu.nextval,3,2,sysdate);
insert into myorder values(seq_menu.nextval,4,7,sysdate);
insert into myorder values(seq_menu.nextval,5,8,sysdate);
insert into myorder values(seq_menu.nextval,6,1,sysdate);



--최종출력
--주문번호      음식명     가격      갯수      주문일자
select o.o_num 주문번호, m.m_name 음식명, m.price 가격, o.cnt||'개' 갯수, o.o_date 주문일자
from menu m, myorder o
where m.m_num=o.m_num;


select * from menu;
select * from myorder;

----------------------------------------------------------------------------------------------------------------------

--constraint 쓰면 오류에서 정확하게 나옴

create table board (bno number(3) CONSTRAINT board_pk_bno primary key,
writer varchar2(20),
subject varchar2(100),
writeday date);

--board에 5개 insert
insert into board values(seq_sawon.nextval,'최성현','안녕 얘들아',sysdate);
insert into board values(seq_sawon.nextval,'윤호석','오랜만이야',sysdate);
insert into board values(seq_sawon.nextval,'송주영','남아서 공부할거야?',sysdate);
insert into board values(seq_sawon.nextval,'임형준','같이 공부하자',sysdate);
insert into board values(seq_sawon.nextval,'박병주','고생하셨습니다',sysdate);
commit;



--answer라는 댓글(자식)
--부모글 지우면 자식글 자동삭제
create table answer (num number(5) CONSTRAINT answer_pk_num primary key,
bno number(3) CONSTRAINT answer_fk_bno REFERENCES board(bno) on delete cascade,
nickname varchar2(20), content varchar2(30), writeday date);

--원하는 글에 댓글 추가하기
insert into answer values(seq_sawon.nextval, 14,'영지니','나 오늘 못가',sysdate);
insert into answer values(seq_sawon.nextval, 12,'희차니','안녕하십니까',sysdate);
insert into answer values(seq_sawon.nextval, 13,'성시니','스타 개못하네 ㅋㅋ',sysdate);
insert into answer values(seq_sawon.nextval, 16,'순영','오늘도 제가 이겼죠?',sysdate);
insert into answer values(seq_sawon.nextval, 15,'호석','같이가시죠 형',sysdate);
insert into answer values(seq_sawon.nextval, 14,'영지','나 오늘 못가2',sysdate);


--join 출력
--원글번호  작성자   작성자글    댓글단사람     댓글내용    원글날짜    댓글날짜
select b.bno 원글번호,b.writer 작성자, b.subject 작성자글, a.nickname 댓글단사람, a.content 댓글내용, b.writeday 원글날짜, a.writeday 댓글날짜
from board b, answer a
where b.bno=a.bno;

--14번 원글삭제
delete from board where bno=14;

--board 먼저 삭제 / 외래키에 의해 참조된 부모글은 삭제 불가능 / 외래키로 연결할경우 테이블 전체 삭제할때 자식먼저 삭제 후 부모 삭제
drop table board; --외래 키에 의해 참조되는 고유/기본 키가 테이블에 있습니다

--자식
drop table answer;

--shop,cart 모두 삭제
drop table cart1;
drop table cart2;
drop table shop;
drop sequence seq_shop;


select * from board;
select * from answer;

--------------------------------------------------------------------------------------------------------------------------------
--문제

create sequence seq_food;

create table food(fno number(5) primary key,
foodname varchar2(30),
price number(10),
shopname varchar2(30),
loc varchar2(30));

insert into food values(seq_food.nextval, '트리플치즈버거',5800,'맥도날드','아주대');
insert into food values(seq_food.nextval, '베이컨 토마토 디럭스',5900,'맥도날드','아주대');
insert into food values(seq_food.nextval, '안심스테이크',15800,'VIPS','아주대삼거리');
insert into food values(seq_food.nextval, '감성돔',58000,'어풍당당','아주대입구');
insert into food values(seq_food.nextval, '돈카츠',7800,'뢰벤','강남');
insert into food values(seq_food.nextval, '제육볶음밥',8500,'명희','역삼동');
insert into food values(seq_food.nextval, '한식뷔페',10000,'뷔페집','역삼지하상가');


create table jumun(num number(5) primary key,
name varchar2(30),
fno number(5) REFERENCES food(fno) on delete cascade,
addr varchar2(30));

insert into jumun values(seq_food.nextval, '최성현', 1, '수원');
insert into jumun values(seq_food.nextval, '박병주', 4, '장제역');
insert into jumun values(seq_food.nextval, '임형준', 2, '서울대입구역');
insert into jumun values(seq_food.nextval, '이성신', 6, '시흥시');
insert into jumun values(seq_food.nextval, '윤호석', 5, '김포시');
insert into jumun values(seq_food.nextval, '이민규', 7, '중랑구');
insert into jumun values(seq_food.nextval, '송주영', 3, '인천');
insert into jumun values(seq_food.nextval, '최진평', 6, '부천');

commit;

--주문번호  주문자     음식명     가격      상호명     가게위치    주문자위치
--주문자 이름 오름차순
select f.fno 주문번호, j.name 주문자, f.foodname 음식명, to_char(f.price,'l999,999')||'원' 가격, f.shopname 상호명, f.loc 가게위치, j.addr 주문자위치
from food f, jumun j
where f.fno=j.fno
order by j.name asc;

select * from food;
select * from jumun;