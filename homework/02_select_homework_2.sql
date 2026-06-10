# Q1. 재직 중이고 휴대폰 마지막 자리가 2인 직원 중 입사일이
# 가장 최근인 직원 3명의 사원번호, 직원명, 전화번호, 입사일, 퇴직여부를 출력하세요.
select EMP_ID, EMP_NAME, PHONE, HIRE_DATE, ENT_YN
from employee
where PHONE like '%2' and ENT_YN = 'N'
order by HIRE_DATE desc
limit 3;

# # Q2.재직 중인 ‘대리’들의 직원명, 직급명, 급여, 사원번호, 이메일, 전화번호, 입사일을 출력하세요.
# # 단, 급여를 기준으로 내림차순 출력하세요.
# select EMP_NAME, (select JOB_NAME from job where JOB_NAME = '대리'), SALARY, EMP_ID, EMAIL, PHONE, HIRE_DATE
# from employee
# where JOB_CODE = (select JOB_CODE from job where JOB_NAME = '대리')
#   and ENT_YN = 'N'
# order by SALARY desc;


