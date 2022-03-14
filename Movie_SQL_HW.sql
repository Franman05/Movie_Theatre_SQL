create table customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

create table concession (
    concession_id SERIAL primary key,
    concession_name VARCHAR(50),
    concession_price decimal(10,2)
);

create table movie (
    movie_id SERIAL primary key,
    movie_title VARCHAR(50)
);

create table seats (
    seats_id SERIAL primary key,
    seats_num decimal(10,2),
    seats_date TIMESTAMP WITH TIME ZONE,
    movie_id INTEGER not null,
    foreign key(movie_id) references movie(movie_id)
);

create table ticket (
    ticket_id SERIAL primary key,
    ticket_price decimal(5,2),
    seats_id INTEGER not null,
    foreign key(seats_id) references seats(seats_id)
);

create table customer_concession (
    customer_id INTEGER not null,
    concession_id INTEGER not null,
    foreign key(customer_id) references customer(customer_id),
    foreign key(concession_id) references concession(concession_id) 
);
