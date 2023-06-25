create or replace function find_teachers_for_subject(subjectId int)
returns table(
    teacher_id int,
    subject_id int,
    first_name text,
    last_name text,
    name text
) as
$$
begin
    
    return query 
           select "subject_teacher".teacher_id,"subject_teacher".subject_id, "teacher".first_name,"teacher".last_name,"subject".name from subject_teacher inner join teacher 
           on subject_teacher.teacher_id = teacher.id inner join subject on subject_teacher.subject_id = subject.id 
           where "subject_teacher".subject_id = subjectId;
end;
$$
Language plpgsql;    