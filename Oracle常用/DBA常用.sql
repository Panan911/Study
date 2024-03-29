--创建用户并修改密码:
create user Stock identified by panan123;

--授权BDA权限：
grant connect,resource,dba to Stock;

--查看用户默认表空间:
select username, default_tablespace defspace from dba_users where username='STOCK';

--表空间使用情况:
select
a.a1 表空间名称,
c.c2 类型,
c.c3 区管理,
b.b2/1024/1024 表空间大小M,
(b.b2-a.a2)/1024/1024 已使用M,
substr((b.b2-a.a2)/b.b2*100,1,5) 利用率
from
(select tablespace_name a1, sum(nvl(bytes,0)) a2 from dba_free_space group by tablespace_name) a,
(select tablespace_name b1,sum(bytes) b2 from dba_data_files group by tablespace_name) b,
(select tablespace_name c1,contents c2,extent_management c3 from dba_tablespaces) c
where a.a1=b.b1 and c.c1=b.b1;

--增加表空间(原segment文件改变大小)
ALTER DATABASE DATAFILE 'D:\Oracle\oradata\ORCL\USERS01.DBF'
AUTOEXTEND ON NEXT 5M MAXSIZE 2000M;
