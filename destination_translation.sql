select
    a.poi,
    a.destination_arrive,
    b.lo_country_code,
    b.lo_city_code,
    b.cmdty
from
    asvt_arrival a
left join
    as_poi b on a.poi=b.poi
where
    a. destination_arrive ilike '%XXXXXX%'	
order by
    a.date_arrive desc;
-----------------------------------------------------------------------------------------------------------------------------------------------------------
   
select * from lookup.port_un where name ilike '%Pacific%';

select * from lookup.port_un where lo_country_code = 'A1';
-----------------------------------------------------------------------------------------------------------------------------------------------------------

select * from as_alias_dest limit 10; --- destination translation table

select * from as_dest_x limit 10; ---junk raw destination table
 
Select * from lookup.port_un limit 10; --- all country+city combinations
 
select * from as_poi limit 10;     ---poi table 
 
select * from country limit 10;  --- country table
--------------------------------------------------------------------------------------------------------------------------------------------------------------

select destination_arrive from asvt_arrival a left join as_poi b on a.poi=b.poi where lo_country_code ='JP' and lo_city_code='YOK';

select * from asvt_arrival a;

select * from as_poi b 