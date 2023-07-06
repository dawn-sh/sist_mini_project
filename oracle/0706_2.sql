--다중정렬
--student에서 1학년 학생의 이름과 키와 몸무게 출력(키는 작은사람부터,몸무게는 많은 사람부터)
select name 이름, height 키, weight 몸무게 from student where grade=1 order by height asc, weight desc;
--emp에서 급여내림차순 후 다시 이름으로 오름차순_사원번호 사원명 급여 조회
select  empno 사원번호, ename 사원명, sal 급여 from emp order by sal desc, ename;

select * from student;
--union : 각 쿼리 중 하나라도 만족하는 것을 중복제거 후 나옴
--union all : 각 쿼리 중 하나라도 만족하는 것을 중복제거 안하고 나옴
--intersect : 각 쿼리 모두 만족하는 교집합

select name,deptno1,deptno2 from student where deptno1=101 intersect
select name,deptno1,deptno2 from student where deptno2=201;

--Q. gogak point가 30만~50만 고객명과 포인트 출력(포인트 많은 순)
select gname 고객명, point 포인트 from gogak where point between 300000 and 500000 order by point desc;

--Q. emp의 comm의 널을 0으로 바꾸어서 직업이 manager인 사람만 이름과 보너스 출력
select ename 이름,nvl(comm,0) 보너스 from emp where job='MANAGER';

--Q. profesoor 103번 학과 교수들의 이름과 급여,보너스,연봉(급여*12+보너스)을 출력하시오
select name "교수님 이름",pay 급여, nvl(bonus,0) 보너스, pay*12+nvl(bonus,0) 연봉 from professor where deptno=103;

--SQL 그룹함수(count,sum,avg)
--count(*) null값 포함,count(컬럼이름) null값 제외
select count(*),count(hpage) from professor;
--sum(컬럼이름)
select count(bonus),sum(bonus) from professor;
--avg(컬럼명)
select count(bonus),sum(bonus),avg(bonus) from professor;

--max(컬러명),min(컬럼명) 
select max(sal),min(sal) from emp;
--max,min 숫자적으로 크고 작은걸 출력
select max(hiredate),min(hiredate) from emp;

--소수점 round(평균/컬럼명,소수점자리)
--emp에서 sal 평균
select round(avg(sal),1) from emp; --소수점 1자리
select round(avg(sal),2) from emp;
select round(avg(sal),0) from emp; --반올림
select round(avg(sal),-1) from emp; --10단위 출력
select round(avg(sal),-2) from emp; --100단위 출력

--콘솔에 출력
--현재날짜(sysdate)를 콘솔(dual)에 출력
select sysdate from dual;

--내일날짜를 콘솔에 출력
select sysdate+1 from dual;

--to_char : 날짜 및 수치 데이터를 문자로 변환하기위한 함수(var_char2 형식)
--날짜에서 년도만 추출
select to_char(sysdate,'year')from dual; --영어로 출력
select to_char(sysdate,'yyyy')from dual; --2023

select to_char(sysdate,'month')from dual; --7월
select to_char(sysdate,'mm')from dual; --07

select to_char(sysdate,'dd')from dual; --06

select to_char(sysdate,'yyyy-mm-dd')from dual; --2023-07-06

select to_char(sysdate,'yyyy-mm-dd hh24-mi-ss')from dual; --2023-07-07 24시간단위시-분-초

--to_char 숫자에도 적용가능하다 / '$','l'를 단위 맨 앞에 붙이면됨
select to_char(245897770,'999,999,999')from dual; --999,999,999 숫자단위 표시

--emp
select empno 사원번호,ename 사원명, to_char(hiredate,'yyyy') 년도 from emp;

--emp에서 사원번호,사원명,급여 출력(급여는 1000단위 구분기호)
select empno 사원번호, ename 사원명, to_char(sal, 'l999,999') 급여 from emp;


--서브쿼리
--쿼리안에 또다른 쿼리 담김(KING보다 급여를 많이 받는 사람은?)_2가지 질문
--서브쿼리가 먼저 수행되어 그 결과를 메인 쿼리에 전해주고 그 값을 받아 메인쿼리가 실행
--서브쿼리 안에는 order by절 못 옴

--emp에서 JAMES보다 급여 많이 받는 사람의 사원명 급여를 구해보자
select ename 사원명,sal 급여 from emp where sal>(select sal from emp where ename='JAMES'); --()안 서브쿼리

--emp에서 평균급여보다 많이 받는 사람의 사원번호, 사원명, 급여를 나타내시오
select empno 사원번호, ename 사원명, sal 급여 from emp where sal>(select avg(sal) from emp);

--emp에서 이름이 WARD인 사람의 MGR과 같은 값을 가진 사람의 목록 출력
select * from emp where mgr=(select mgr from emp where ename='WARD');

--emp에서 평균 급여 보다 많이 받는 사람 수?
select count(*) from emp where sal>(select avg(sal) from emp);


--서브쿼리 문제
--Q1. emp에서 ADMAS와 같은 직업군을 가진 사람의 이름 연봉 직업군 출력
select ename 이름, sal*12+nvl(comm,0) 연봉, job 직업군 from emp where job=(select job from emp where ename='ADAMS');

--Q2. emp에서 SCOTT과 같은 연봉을 받는 사람의 이름과 연봉출력
select ename 이름, sal*12+nvl(comm,0) 연봉 from emp where sal*12+nvl(comm,0)=(select sal*12+nvl(comm,0) from emp where ename='SCOTT');

--Q3. student에서 제1전공이 일지매 학생과 동일한 학생들의 학생명 제1전공 출력
select name 학생명, deptno1 제1전공 from student where deptno1=(select deptno1 from student where name='일지매');

--Q4. student에서 제1정공이 101인 학과의 평균몸무게보다 몸무게가 많은 학생들의 이름과 몸무게 출력
select name 이름,weight 몸무게 from student where weight>(select avg(weight) from student where deptno1=101);

--Q5. professor에서 입사일이 김영조 교수보다 나중에 입사한 사람의 이름과 입사일 학과번호를 출력하시오
select name 이름,hiredate 입사일, deptno 학과번호 from professor where hiredate>(select hiredate from professor where name='김영조');