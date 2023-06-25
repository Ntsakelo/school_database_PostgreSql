create or replace function get_learner_current_school(learnerId int)
returns table(
    school_id int,
    current_school text
) as
$$
begin 

      return query
                 select "learner_school".school_id,"learner_school".current_school from learner_school where "learner_school".learner_id = learnerId;
end;
$$
Language plpgsql;                 