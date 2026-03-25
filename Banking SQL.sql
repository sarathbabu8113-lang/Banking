use db;
select * from employees;
select FIRST_NAME,LAST_NAME,SALARY from employees;
select FIRST_NAME,LAST_NAME,SALARY, SALARY*12 AS YEARLY_SALARY FROM employees;

SELECT distinct DEPT FROM employees;

SELECT * FROM employees WHERE GENDER='F';
SELECT * FROM employees WHERE GENDER='M' AND DEPT='AUTOMOTIVE';
SELECT * FROM employees where GENDER='M' OR SALARY>11000;
SELECT * FROM employees ORDER BY GENDER desc;
SELECT * FROM employees ORDER BY FIRST_NAME ASC;

SELECT * FROM employees WHERE EXP>=5 AND EXP<=10;
SELECT * FROM employees WHERE EXP between 5 AND 10;
SELECT * FROM employees WHERE EXP NOT between 5 AND 10;

SELECT * FROM employees WHERE FIRST_NAME LIKE 'C%';
SELECT * FROM employees WHERE FIRST_NAME LIKE '%C';
SELECT * FROM employees WHERE FIRST_NAME LIKE '_C%';
SELECT * FROM employees WHERE ROLE NOT LIKE  '%Data Scientist';
SELECT * FROM employees WHERE COUNTRY='INDIA' OR COUNTRY='USA' OR COUNTRY ='CANADA';
SELECT * FROM employees WHERE COUNTRY IN('INDIA','USA','CANADA');
SELECT * FROM employees WHERE COUNTRY NOT IN('INDIA','USA','CANADA');


SELECT sum(SALARY)AS TOTAL_SALARY FROM employees;
SELECT avg(SALARY) AVG_SALARY FROM employees;
SELECT min(SALARY),max(SALARY) FROM employees;

SELECT ROLE,COUNT(*) FROM employees GROUP BY ROLE;

SELECT DEPT,sum(SALARY) TOTAL_SALARY_DEPT
FROM employees
WHERE COUNTRY<>'CHINA'
group by DEPT
HAVING sum(SALARY)>=11000
order by sum(SALARY) DESC;

select * from employees limit 5;
select * from employees 
	order by SALARY  limit 5;
    
select * from employees 
order by SALARY desc limit 5 offset 1;

select EMP_ID,FIRST_NAME,left(FIRST_NAME,3),right(Emp_ID,3) from employees;