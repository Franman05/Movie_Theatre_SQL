insert into customer (
	customer_id,
    first_name,
    last_name
) values (
   	1, 
   	'Bob', 
   	'Wilson'
);

insert into concession (
    concession_id,
    concession_name,
    concession_price
) VALUES (
    1, 
    'Snickers', 
    2.50 
 );
 
insert into movie (
    movie_id,
    movie_title
) VALUES (
   '1', 
   'The Meg'
);

insert into seats (
    seats_id,
    seats_num,
    seats_date,
    movie_id
) VALUES (
   	1, 
   '3', 
   '02/02/22',
   1
);

insert into ticket (
    ticket_id,
    ticket_price,
    seats_id
) VALUES (
   	1, 
   	9.50, 
   	1
);

insert into customer_concession (
    customer_id,
    concession_id
) VALUES (
    1,
    1
);

select * from customer