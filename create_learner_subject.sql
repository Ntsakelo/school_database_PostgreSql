create table learner_subject(
  id serial not null primary key,
  subject_id int not null, 
  learner_id int not null,
  foreign key (subject_id) references subject(id) on delete cascade,
  foreign key (learner_id) references learner(id) on delete cascade
)