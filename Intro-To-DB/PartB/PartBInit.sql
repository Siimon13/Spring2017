create table airline
(
name		varchar(50),

primary key (name)
);

create table airlinestaff
(
username		varchar(50),
password 		varchar(50),
first_name 		varchar(50),
last_name 		varchar(50),
DOB 		datetime,

primary key (username)
);

create table works_for
(
username		varchar(50),	
name		varchar(50),

primary key (username,name),

foreign key (username) references airlinestaff(username)
on delete cascade,

foreign key (name) references airline(name)
on delete cascade

);

create table airplane
(
id		varchar(50),
seats		numeric(4,0),

primary key (id)
);

create table owned_by
(
name		varchar(50),
id		varchar(50),

primary key (name, id),

foreign key (id) references airplane(id)
on delete cascade,

foreign key (name) references airline(name)
on delete cascade

);

create table flight
(
flight_num varchar(50),
departure_time varchar(50),
arrival_time varchar(50),
price numeric(8,2),
status varchar(50),


primary key (flight_num)
);

create table operated_by
(
id varchar(50),
flight_num varchar(50),

primary key (id, flight_num),

foreign key (flight_num) references flight(flight_num)
on delete cascade,

foreign key (id) references airplane(id)
on delete cascade

);


create table airport
(
name varchar(50),
city varchar(50),

primary key (name)

);

create table arrives
(
name varchar(50),
flight_num varchar(50),

primary key (name, flight_num),

foreign key (name) references airport(name)
on delete cascade,

foreign key (flight_num) references flight(flight_num)
on delete cascade

);

create table departs
(
name varchar(50),
flight_num varchar(50),

primary key (name, flight_num),

foreign key (name) references airport(name)
on delete cascade,

foreign key (flight_num) references flight(flight_num)
on delete cascade

);

create table ticket
(
ticket_id varchar(50),

primary key (ticket_id)
);

create table for_ticket
(
ticket_id varchar(50),
flight_num varchar(50),

primary key (ticket_id, flight_num),

foreign key (ticket_id) references ticket(ticket_id)
on delete cascade,

foreign key (flight_num) references flight(flight_num)
on delete cascade

);

create table booking_agent
(
email		varchar(50),
password 		varchar(50),
booking_agent_id 		varchar(50),

primary key (email, booking_agent_id)
);

create table customer
(
email		varchar(50),
name		varchar(50),
password 	varchar(50),
building_num 	numeric(4,0),
street 		numeric(3,0),
city	 	numeric(4,0),
state 		varchar(50),
phone_num 	numeric(15,0),
passport_num 	numeric(9,0),
passport_expiration 	datetime,
passport_country 	varchar(20),
DOB 		datetime,

primary key (email, passport_num)
);

create table purchases
(
email		varchar(50),
ticket_id	varchar(50),
booking_agent_id varchar(50),

primary key (email,ticket_id),

foreign key (ticket_id) references ticket(ticket_id)
on delete cascade,

foreign key (email) references customer(email)
on delete cascade

);
