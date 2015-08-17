create table A(Akey integer, primary key(AKey));
create table B(Bkey integer references A(AKey));

insert into A values(1);
insert into A values(2);
insert into A values(3);

insert into B values(1);
insert into B values(2);
insert into B values(3);

delete from B where BKey=3; % no problem
delete from A where AKey=3; % cascade delete, answer in txt file

drop table B;
drop table A;

create table A(Akey integer, primary key(AKey));
create table B(Bkey integer references A(AKey) on delete cascade);

insert into A values(1);
insert into A values(2);
insert into A values(3);

insert into B values(1);
insert into B values(2);
insert into B values(3);

delete from B where BKey=3; % no problem
delete from A where AKey=3; % no problem, answer in txt file

