namespace com.logaligroup;

entity Header{
key ID: String(36);
Key EMAIL: String(30);
FIRSTNAME: String(30);
LASTNAME: String;
COUNTRY: String(30);
CREATEON: Date;
DELIVERYDATE: DateTime;
ORDERSTATUS: Integer;
IMAGEURL: String;
}

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
UNITOFMESURE: 
};

