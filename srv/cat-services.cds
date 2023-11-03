using my.bookshop as db from '../db/schema';


 service CatalogService {


    entity Books_service as select from db.Books;
    entity Order_service {
        cust_value                  : String   @required;
    }

} 