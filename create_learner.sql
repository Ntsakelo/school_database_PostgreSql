create table learner(
    id serial not null primary key, 
    first_name text not null, 
    last_name text not null,  
    email text not null, 
    grade_id int not null,
    foreign key (grade_id) references grade(id) on delete cascade
)