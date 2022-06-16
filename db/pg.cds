using {cuid} from '@sap/cds/common';

namespace pgdb;

entity Projects : cuid {
    name       : String(150);
    language   : String(150);
    repository : String;
    votes      : Association to many Votes
                     on votes.project = $self;
}

entity Votes : cuid {
    username  : String(150);
    createdAt : Date;
    project   : Association to one Projects;
}
