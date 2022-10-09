Create table actor(
    act_id int Not Null,
    act_fname char(20) Not Null,
    act_lname char(20) Not Null,
    act_gender char(1) Not Null,
    Primary Key(act_id)
);

Create table director(
    dir_id int Not Null,
    dir_fname char(20) Not Null,
    dir_lname char(20) Not Null,
    Primary Key(dir_id)
);

Create table movie(
    mov_id int Not Null,
    mov_title char(50) Not Null,
    mov_year int Not Null,
    mov_time int Not Null,
    mov_lang char(50) Not Null,
    mov_dt_rel date Not Null,
    mov_rel_country char(5),
    Primary Key(mov_id)
);

Create table reviewer(
    rev_id int Not Null,
    rev_name char(30),
    Primary Key(rev_id)
);

Create table genres(
    gen_id int Not Null,
    gen_title char(20),
    Primary Key(gen_id)
);

Create table movie_direction(
    dir_id int Not Null,
    mov_id int Not Null,
    Primary Key(mov_id)
);

Alter table movie_direction
Add Foreign Key(dir_id) references director(dir_id),
Add Foreign Key(mov_id) references movie(mov_id);

Create table movie_cast(
    act_id int Not Null,
    mov_id int Not Null,
    role char(30),
    Primary Key(act_id, mov_id)
);

Create table movie_genres(
    mov_id int Not Null,
    gen_id int Not Null
);

Alter table movie_genres
Add Foreign Key(mov_id) references movie(mov_id),
Add Foreign Key(gen_id) references genres(gen_id);

Create table rating(
    mov_id int Not Null,
    rev_id int Not Null,
    rev_stars int Not Null,
    num_o_ratings int Not Null,
    Primary Key(mov_id)
);

Alter table rating
Add Foreign Key(mov_id) references movie(mov_id),
Add Foreign Key(rev_id) references reviewer(rev_id);
