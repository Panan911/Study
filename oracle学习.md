[toc]

# 基本语句

## 新建表格

```plsql
1:create table table_name (col_name1 number,col_name2 varchar2(100),col_name3 data);
2:create table table_name as select * from table_name;
```

## 查询

``` plsql
select * From data_sync.ng_gsm_user_wx;
```

## 插入

```plsql
insert into test_table(sn,msisdn)
values
(1,13951585190);
commit;
```

## 删除与清除

```plsql
--删除全表:
delete table table_name;
--删除条件内的行 :
delete table_name where ...... ;
--清空表格:
truncate table table_name;

'''
扩展知识点:
delete table 和 truncate table 都可以清除全表，不同的是
delete table 是删除全表(包括表结构)，且可逆。
truncate table 是清空表内数据，表结构依然保留，操作不可逆。
'''
```



