create view query4 as select employername,year,count(*) as total from niit.h1bfinal where year in ('2011','2012','2013','2014','2015','2016') group by year,employername sort by year,total;
select year,employername,total,rank from(select year,employername,rank() over (partition by year order by total desc) as rank,total from query4) ranked_table where ranked_table.rank <=5;
