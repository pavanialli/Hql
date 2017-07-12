
create view query2e as select worksite,year,count(casestatus) as total from niit.h1bfinal where casestatus = "CERTIFIED" and year in ('2011','2012','2013','2014','2015','2016') group by worksite,year sort by year,total desc;
select year,worksite,total,rank from (select year,worksite,rank() over (partition by year order by total desc) as rank,total from query2e ) ranked_table where ranked_table.rank<=5;
