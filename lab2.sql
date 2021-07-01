create database lab2;

create table countries(
    country_id serial PRIMARY KEY,
    country_name varchar(25),
    region_id int,
    population int
);

insert into countries(country_name, region_id, population) values ('Zambia', 12, 2500000);

insert into countries(country_name) values ('China');

insert into countries(region_id) values (NULL);

insert into countries(country_name, region_id, population) values ('Kyrgyzstan', 94, 9000000), ('Taiwan', 21, 4000000),('Livan', 30, 14000000);

alter table countries alter country_name set default 'Kazakhstan';

insert into countries(country_name) values (default);
select *
from countries;

insert into countries values (default);
select * from countries;

create table countries_new as select * from countries;

select * from countries_new;

update countries_new set region_id=1 where region_id is NULL;

update countries_new set population=1000 where population is NULL;

alter table countries_new add column new_population int;

update countries_new set new_population = population * 1.15 where new_population is NULL;

delete from countries_new where population < 100000;