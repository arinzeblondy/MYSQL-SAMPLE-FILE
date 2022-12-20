Create  database test;
drop database test;
create database record_company;
use record_company;

create table test (
test_column int 
);
show databases;

alter table test
add another_column varchar (255);

drop table test;

create table bands (
id int not null auto_increment,
name varchar (225) not null,
primary key (id)
);

create table album(
id int not null auto_increment,
name varchar (255) not null,
release_year int, 
bands_id int not null,
primary key (id),
foreign key (bands_id) references bands(id)
);

insert into bands (name)
values ("blondy");

insert into bands (name)
values ("ben"), ("goodluck"), ("winner");

select *from bands;

select *from bands limit 2;

select name from bands;

select id as "ID", name as "BAND_NAME"
from bands;

select *from bands order by name DESC;


insert into album (name,release_year,bands_id)
values("the return of the beast", 1985, 1),
       ("power slave", 1984,1),
	 ("nightmare", 2018,2),
     ("nightmare", 2010,3),
     ("test bomb",null,3);
     
     select *from album;
     
     select name from album;
     
     select distinct name from album;
     
     update album
     set release_year = 1982
     where id=1;
     
      select *from album;

select *from album
where release_year <2000;

select *from album
where release_year =1984 and bands_id=1;

select *from album
where release_year between 2000 and 2018;

select *from album
where release_year is null;

delete from album where id=5;

select *from album;

select *from bands
inner join album on bands.id=album.bands_id;

select *from bands
left join album on bands.id=album.bands_id;

select avg(release_year) from album;

select sum(release_year) from album;

select bands_id, count (bands_id) from album
group by bands_id; 




