create table subject_teacher(
    id serial not null primary key,
    subject_id int not null,
    teacher_id int not null,
    foreign key (subject_id) references subject(id) on delete cascade,
    foreign key (teacher_id) references teacher(id) on delete cascade
)