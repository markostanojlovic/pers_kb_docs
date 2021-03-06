# last 5 minutes 
select id, creation_time from ct_table where creation_time >= now() - interval '5 minutes';
select something where my_timestamp < to_timestamp('25-03-2019 14:30:02', 'dd-mm-yyyy hh24:mi:ss');

# looking for a table name 
select tablename from pg_catalog.pg_tables where schemaname='public' and tablename like '%ins%';
select tablename from pg_catalog.pg_tables where tableowner='r_fxs09' and tablename like '%ins%';

# case insensitive query 
select cloumn_name from table_name where lower(column_name) like '%filter%'

# display column names in a table 
select column_name from information_schema.columns where table_name = 'position';

# inner join 
SELECT table1.name, table2.symbol 
FROM table1 INNER JOIN table2 ON table1.common_key=table2.common_key 
WHERE table2.status='ACTIVE' and table2.authorized='true' 
order by table1.name; 
