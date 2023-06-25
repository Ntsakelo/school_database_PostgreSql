create or replace function find_teachers_teaching_multiple_subjects(numOfSubjects int)
returns table(
    first_name text,
    last_name text,
    subjectCount bigint
) as
$$
begin

     return query 
                select "teacher".first_name,"teacher".last_name,count("subject".name) as subjectcount from teacher 
                inner join 
                      subject_teacher on teacher.id = subject_teacher.teacher_id 
                inner join
                       subject on subject_teacher.teacher_id = subject.id  
                group by  
                "teacher".first_name,"teacher".last_name,"subject".name
                   having count("subject".name) = numOfSubjects;
end;
$$
Language plpgsql;                   