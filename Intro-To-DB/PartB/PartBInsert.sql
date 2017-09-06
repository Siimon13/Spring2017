insert into airline
values ("Emirates");

insert into airport 
values("JFK", "NYC");

insert into airport 
values("Chicago International Airport", "Chicago");

INSERT into customer
values ("simon@gmail.com", "Simon", "password","1234","Watt","NYC","NY","123456789","1245346","2017-10-24 12:00:00", "United States", "2003-10-24 10:00:00");

INSERT into customer
values ("time@gmail.com", "Time", "password4","1434","Water","Chicago","IL","6462658321","5341527","2020-10-24 12:00:00", "United States", "2000-10-24 10:00:00");

INSERT INTO booking_agent 
values ("Pat@agency.com", "secure", "213pat2");

insert into airplane
values ("NY123", "200");

insert into airplane
values ("CHC123", "100");

insert into airlinestaff
values ("LueEmi", "emir", "Lue", "Logan", "1985-10-24 10:00:00");

INSERT into works_for
VALUES ("LueEmi", "Emirates");

insert into owned_by
values ("Emirates","CHC123");

insert into owned_by
values ("Emirates","NY123");

insert into flight
VALUES("1","12","15","150","in-progress");

insert into flight
VALUES("2","11","15","150","delayed");

insert into flight
VALUES("3","15","18","150","upcoming");

insert into flight
VALUES("4","17","20","150","upcoming");

insert into flight
VALUES("5","18","21","150","upcoming");

insert into operated_by
values ("NY123", "1");

insert into operated_by
values ("CHC123", "2");

insert into operated_by
values ("NY123", "3");

insert into operated_by
values ("CHC123", "4");

insert into operated_by
values ("NY123", "5");

insert into ticket
values("NYTOCHIC1");

insert into ticket
values("CHICTONY1");

insert into for_ticket
values("CHICTONY1", "2");

insert into for_ticket
values("NYTOCHIC1", "1");

insert into arrives
values("Chicago International Airport", "1");

insert into departs
values("JFK", "1");

insert into arrives
values("JFK", "2");

insert into departs
values("Chicago International Airport", "2");

insert into arrives
values("JFK", "3");

insert into departs
values("Chicago International Airport", "3");

insert into arrives
values("Chicago International Airport", "4");

insert into departs
values("JFK", "4");

insert into arrives
values("Chicago International Airport", "5");

insert into departs
values("JFK", "5");

INSERT INTO purchases
VALUES("simon@gmail.com", "NYTOCHIC1", NULL);

INSERT INTO purchases
VALUES("time@gmail.com", "CHICTONY1", "213pat2");


