using {com.logaligroup as call} from '../db/schema';

service ServiceCatalog{
entity HeaderSet as projection on call.Header;

};