--emp테이블에서 ename만 조회하시오
--해당 명령어만 실행하려면 해당 명령문만 선택해서 실행
--혹은 해당줄 누르고 ctrl+enter
select ename from emp;
--emp테이블에서 이름과 직업만 조회하시오
select ename,job from emp;
--emp 테이블 전체조회
select * from emp;

--기본적인 저장단위 테이블, 모든 데이터를 레코드, 한줄한줄을 세로-컬럼,가로-로우라고 한다
--테이블의 원래 형식어는 relation
--숫자를 number,int,varchar2
--숫자들이 연속적이지 않아도 되지만 중복은 안됨(sequence 기준)
--date_default 입력하지 않으면 자동 null 입력

--Student테이블 전체조회/;없어도 되긴하지만 뒤에 이어서 써야해서 ;붙이는게 좋음
select * from student;

--표현식-컬럼이외에 런하는 내용을 셀렉트에 적용/하나의 추가 컬럼생성
select name,'지금실습중' from student;
--컬럼 별칭 allias출력/3가지 방법/""가 없는 글에 띄어쓰기는 오류
select name "이름",grade as "학년", birthday 생일 from student;
--emp에서 사원명,직업,입사일자 조회해보기
select ename "사원명",job as "직업", hiredate 입사일자 from emp;
--DISTINCT:중복된 값을 제거하고 출력 / select 뒤에만 붙여야함
--emp에서 직업군을 중복하지말고 출력
select DISTINCT job 직업군 from emp;
--emp에서 부서번호를 중복없이 출력해보기
select distinct deptno 부서번호 from emp;

--합성연산자: 컬럼을 붙여서(합쳐서) 출력다
select name||grade 학년별학생명 from student;
--professor 전체조회
select * from professor;
--하나의 컬럼으로 출력_조인형 님은 정교수 입니다
select name|| '님은' ||position|| '입니다' "교수별직급" from professor;

--emp에서 smith님의 job은 clerk 입니다
select ename|| '님의 job은' ||job||'입니다' from emp;
--student에서 서진수님의 키는 180cm,몸무게는 72kg입니다
select name||'님의 키는 '||height||'cm, 몸무게는 '||weight||'kg입니다' from student;
--emp에서 내 직업은 salesman 이고 연봉은 ***입니다
select '내 직업은 '||job||'이고 연봉은 '||sal||'입니다' from emp;


--정렬
--student에서 학생명 학년 생일을 학생명의 오름차순으로 조회하시오/가장 먼저 오는건 from절
--order by 열번호/컬럼이름 asc는 오름차순 정렬 안쓰면 자동 오름차순/desc는 내림차순 생략불가능
select name 학생명,grade 학년, birthday 생일 from student order by name asc;
select name 학생명,grade 학년, birthday 생일 from student order by birthday;

--emp에서 사원명,직업,급여를 급여가 낮은 사람 순으로 조회하세요
select ename 사원명, job 직업, sal 급여 from emp order by 3 desc;
--emp에서 직업군을 중복없이 출력하고 직업군의 오름차순으로 출력하세요
select distinct job from emp order by job;


--산술연산자
--emp에서 sal에 특별보너스 100을 더하여 출력하시오
select ename 사원명,sal 기본급,sal+100 특별보너스 from emp;

--where절 : 조건 /문자들은 ''붙이고 대소문자 구분
--emp에서 10번부서에 근무하는 사람의 사원명,급여와 부서번호를 출력하세요
select ename 사원명,sal 급여,deptno 부서번호 from emp where deptno=10;
--emp에서 이름이 KING인 사람의 사원명,직업을 조회하시오
select ename 사원명, job 직업 from emp where ename='KING';
--emp에서 급여가 3000이상인 사람의 사원명과 급여를 조회하세요
select ename 사원명, sal 급여 from emp where sal>=3000;
--학생테이블에서 키가 180cm이상인 학생명 과 키를 출력하시오
select name 학생명,height 키 from student where height>=180;
--학생테이블에서 키가 160~180사이인 학생명과 키 출력 between a(작은수) and b
select name 학생명,height 키 from student where height between 160 and 180 order by height;

--in(a,b) : a,b만 조회
--emp에서 deptno가 20,30인 사람들의 사원명과 부서번호를 조회
select ename 사원명, deptno 부서번호 from emp where deptno in(20,30);

--null값만 출력/null과 0 구분
--emp에서 comm이 null인 사람의 이름과 보너스를 출력하시오
select ename 사원명,comm 보너스 from emp where comm is null;
--emp에서 comm이 null이 아닌 사람의 이름과 보너스를 출력하시오
select ename 사원명,comm 보너스 from emp where comm is not null;

--NVL : null값 바꾸기 _연산이 목적 nvl(컬럼이름, 바꿀수)
select ename 사원명,nvl(comm,0) 보너스 from emp;

--Like 연산 김% = 김으로 시작하는 %김 =김으로 끝나는 %김% = 김을 포함하는
--학생테이블에서 김씨만 조회하여 모든 열을 출력하시오
select * from student where name like '김%';
--학생테이블 총 몇명? count(컬럼명)
select count(*) cnt from student;

--emp에서 job이 salesman,manager인 사원명,직업군만 출력하세요(or in)
select ename 사원명, job 직업군 from emp where job in('SALESMAN','MANAGER');
select ename 사원명, job 직업군 from emp where job='SALESMAN' or job='MANAGER';

--emp에서 급여가 2000~3000인 사원명,직업군,급여를 출력하세요 (and between연산자)
select ename 사원명, job 직업군, sal 급여 from emp where sal>=2000 and sal<=3000;
select ename 사원명, job 직업군, sal 급여 from emp where sal between 2000 and 3000;

--Q.studnet 테이블에서 1학년 학생의 학생명,키를 출력하시오(단 키가 작은순...)
select name 학생명,height 키 from student where grade=1 order by height;

--Q.student 테이블에서 2학년 학생의 학생명 생일 키 몸무게를 출력하시오(단 생일이 빠른사람순서)
select name 학생명, birthday 생일, height 키, weight 몸무게 from student where grade=2 order by birthday asc;

--Q.professord에서 교수들의 이름 중 조 씨 성을 가진 교수의 교수명 직위 입사일자를 출력하시오
select name 교수명,position 직위, hiredate 입사일자 from professor where name like '조%';

--Q. emp에서 사원명, 급여, 급여*12,보너스,급여총계 를 구하시오
select ename 사원명,sal 급여,sal*12 연봉, nvl(comm,0) 보너스, sal+(sal*12)+nvl(comm,0) 급여총계 from emp;

--Q.emp에서 입사일자가 1982/01/01 이후에 들어온사람의 사원명과 입사일자를 조회하시오(입사일자 순)
select ename 사원명,hiredate 입사일자 from emp where hiredate>='1982/01/01' order by hiredate asc;

--Like %, _언더바 이용해서 특정순번에 있는 글을 출력
--emp에서 사원명이 두번째 글자가 a인사람의 사원명출력 / _언더바 1개에 1자리 __언더바 두개하면 세번째 글자가 a인사람
select ename 사원명 from emp where ename like '_A%';

--emp에서 사원병이 2번째글자가 s인 사람 또는 3번째 글자가 s인 사람 사원명출력
select ename 사원명 from emp where ename like '_A%' or ename like '__A%';

--날짜 리터럴 ' '반드시 사용
--emp에서 직급이 clerk이고 입사일이 87/05/23인사람의 사원명 입사일 구하기
select ename 사원명,hiredate 입사일 from emp where job='CLERK' and hiredate='87/05/23';

--emp에서 매니저이거나 82년 이후 입사자 의 사원명 직업군 입사일 출력
select ename 사원명,job 직업군, hiredate 입사일 from emp where job='MANAGER' or hiredate>='1982/01/01';