create table department(
    id varchar(20) primary key,
    departmentname varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
    departmentdescription varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci,
    staffname varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    sex varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    age int(20),
    telephone varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci,
    jobname varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci
)CHARACTER SET = utf8 COLLATE = utf8_general_ci;


--
-- 脱敏手机号
UPDATE department 
set telephone = CONCAT(LEFT(phone,3), '*****' ,RIGHT(phone,3));

------SQL 统计各部门的员工人数
select departmentname,count(*) as 人数 
from department
group by departmentname;

--------SQL 查询每个部门年龄最大的员工
select departmentname,max(age) as 最大年龄
from department
group by departmentname;


-------SQL 手机号模糊查询
select *
from department
where telephone like '%156%';