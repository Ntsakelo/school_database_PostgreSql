create or replace function link_learner_to_school(learnerId int,schoolId int)
returns boolean as
$$
declare
total int;
schoolName text;
begin
      select into schoolName name from school where id = schoolId;
      select into total count(*) from learner_school where learner_id = learnerId;

      if(total = 0) then 
        insert into learner_school(learner_id,school_id,current_school) values(learnerId,schoolId,schoolName);
        return true;
     else
        return false;
    end if;
end;
$$
Language plpgsql;  

