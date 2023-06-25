create table teacher(
    id serial not null primary key, 
    first_name text not null, 
    last_name text not null, 
    email text not null, 
    school_id int not null,
    foreign key (school_id) references school(id) on delete cascade
)