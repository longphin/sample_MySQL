create table c
(name integer not null unique,
code integer constraint ckey primary key,
capital integer,
province integer);

create table d
(name integer,
country integer,
province integer,
constraint dKey foreign key (name, country, province) references c(capital, name, province) DEFERRABLE INITIALLY DEFERRED);

alter table c
	add constraint c_FKey foreign key (capital, code, province)
	references d(name, country, province) DEFERRABLE INITIALLY DEFERRED;

insert into d values(1,1,1); % no error
insert into c values(3,2,3,0); % error, detailed in txt file
