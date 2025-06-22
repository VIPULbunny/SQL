create database sports;
use sports;
create table cricket(id int auto_increment, Player_name char(20) not null, Player_role char(30) not null, country char(20) not null, primary key(id));
insert into cricket(Player_name,Player_role,country) values('Sachin','Batsman','India'),
('malinga','bowler','Shrilankha'),
('bravo','batsman','West indies'),
('polad','All rounder','West indies'),
('buttler','batsman','England'),
('Mahi','keeper','India'),
('stac','bowler','New Zealand');

drop table cricket;

select * from cricket;

create table football(id int auto_increment, Player_name char(20) not null, Player_role char(30) not null, country char(20) not null, primary key(id));
insert into football(Player_name,Player_role,country) values('L.messi','Stricker','Argrntena'),
('Nemar jr.','left winger','Brazil'),
('Rolando','Stricker','Portugal'),
('mappa','Stricker','Brazil'),
('Pele','Stricker','Brazil'),
('Pogba','left winger','France'),
('kane','Stricker','England');

select * from football;