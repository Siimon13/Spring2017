/*Question a */

SELECT *
FROM flight
where STATUS = "upcoming";

/*Question b */

SELECT *
FROM flight
where STATUS = "delayed";

/*Question c */

SELECT name
FROM customer natural join purchases
where booking_agent_id is not NULL;

/*Question d */

SELECT * FROM `owned_by`;



