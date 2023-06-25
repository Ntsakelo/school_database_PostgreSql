create or replace function change_learner_school(learnerId int,schoolId int)
returns boolean as
$$
declare
total int;
schoolName text;
begin
     
      select into total count(*) from learner_school where "learner_school".learner_id = learnerId;

      if(total > 0) then
       select into schoolName "school".name from school where "school".id = schoolId;
       update learner_school set school_id = schoolId,current_school = schoolName where learner_id = learnerId;
       return true;
     else
        return false;  
    end if;
end;
$$
Language plpgsql;     
         