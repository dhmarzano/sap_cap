namespace com.logaligroup;

using {
cuid,
managed,
sap.common.CodeList,
} from'@sap/cds/common';

entity Header: cuid, managed {
EMAIL: String(30);
FIRSTNAME: String(30);
LASTNAME: String;
COUNTRY: String(30);
CREATEON: Date;
DELIVERYDATE: DateTime;
ORDERSTATUS: Integer;
CATEGORY: String;
IMAGEURL: String;
};


entity Items{
key ID: String(36);
NAME : String(40);
DESCRIPTION: String(40);
RELEASEDATE: Date;
DISCONTINUEDATE: Date;
PRICE: Decimal(12,2);
HEIGHT: Decimal(15,3);
WIDTH: Decimal(13,3);
DEPTH: Decimal(12,2);
QUANTITY: Decimal(16,2);
UNITOFMESURE: Decimal(13,2);
};

entity Units{
key UNIT: String(3);
DESCRIPTION: String(40); 
};
 
entity VH_Categories: CodeList{
   key Code: Int16; 
}

