--�����û����޸�����:
create user Stock identified by panan123;

--��ȨBDAȨ�ޣ�
grant connect,resource,dba to Stock;

--�鿴�û�Ĭ�ϱ�ռ�:
select username, default_tablespace defspace from dba_users where username='STOCK';

--��ռ�ʹ�����:
select
a.a1 ��ռ�����,
c.c2 ����,
c.c3 ������,
b.b2/1024/1024 ��ռ��СM,
(b.b2-a.a2)/1024/1024 ��ʹ��M,
substr((b.b2-a.a2)/b.b2*100,1,5) ������
from
(select tablespace_name a1, sum(nvl(bytes,0)) a2 from dba_free_space group by tablespace_name) a,
(select tablespace_name b1,sum(bytes) b2 from dba_data_files group by tablespace_name) b,
(select tablespace_name c1,contents c2,extent_management c3 from dba_tablespaces) c
where a.a1=b.b1 and c.c1=b.b1;

--���ӱ�ռ�(ԭsegment�ļ��ı��С)
ALTER DATABASE DATAFILE 'D:\Oracle\oradata\ORCL\USERS01.DBF'
AUTOEXTEND ON NEXT 5M MAXSIZE 2000M;
