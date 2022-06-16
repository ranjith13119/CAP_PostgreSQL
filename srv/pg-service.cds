using pgdb from '../db/pg';

service PublicService {
    entity Projects as projection on pgdb.Projects;
    entity Votes as projection on pgdb.Votes;
    function test() returns String;
}
