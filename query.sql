-- drop tables as needed
drop table breweries;
drop table restaurants;

-- create tables
create table breweries (
	zipcode INT PRIMARY KEY,
	brewery_name TEXT,
	brewery_address TEXT
);
create table restaurants (
	zipcode INT PRIMARY KEY,
	restaurant_name TEXT,
	restaurant_region TEXT
);

-- view all data in each table to verify it was put into the database
select * from breweries;
select * from restaurants;

-- query that finds all zipcodes that have both a brewery and a Michelin restaurant
select b.zipcode, b.brewery_name, b.brewery_address, r.restaurant_name, r.restaurant_region
from breweries b
join restaurants r
on b.zipcode = r.zipcode;