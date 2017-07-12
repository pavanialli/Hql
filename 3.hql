select socname,count(jobtitle) as  total from niit.h1bfinal where jobtitle like  "%DATA SCIENTIST%" group by socname order by total desc limit 1;

