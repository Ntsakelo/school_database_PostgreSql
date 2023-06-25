create table learner_school(
    id serial not null primary key,
    learner_id int not null, 
    school_id int not null, 
    current_school text not null,
    foreign key (school_id) references school(id) on delete cascade,
    foreign key (learner_id) references learner(id) on delete cascade
)