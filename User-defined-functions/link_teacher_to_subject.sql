create or replace function link_teacher_to_subject(subjectId int,teacherId int)
returns boolean as
$$
declare 
total int;
begin

      select into total count(*) from subject_teacher where subject_id = subjectId 
      and teacher_id = teacherId;

      if(total = 0) then
       insert into subject_teacher(subject_id,teacher_id) values(subjectId,teacherId);
       return true;
      else
        return false;
      end if;
end;
$$
Language plpgsql;