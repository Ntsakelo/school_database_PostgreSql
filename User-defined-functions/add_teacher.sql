create or replace function add_teacher(teacher_firstName text, teacher_lastName text, teacher_email text, schoolId int)
returns boolean as
$$
declare
total int;
begin

      select into total count(*) from teacher where LOWER(first_name) = LOWER(teacher_firstName) 
      and LOWER(email) = LOWER(teacher_email);

      if(total = 0) then
      insert into teacher(first_name,last_name,email,school_id) values(teacher_firstName,teacher_lastName,teacher_email,schoolId);
      return true;
      else
      return false;
      end if;
end;
$$
Language plpgsql;        
