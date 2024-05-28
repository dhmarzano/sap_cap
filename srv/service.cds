using {com.logaligroup as call} from '../db/schema';

service ServiceCatalog{
entity HeaderSet as projection on call.Header;
entity VH_Categories as projection on call.VH_Categories;
};