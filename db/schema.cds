namespace com.logaligroup;

using {
   cuid,
   managed,
   sap.common.CodeList,
} from '@sap/cds/common';


entity Suppliers : cuid, managed {
   Supplier     : String(200);
   SupplierName : String(120);
   WebAddress   : String(200);
}

entity Contacts : cuid {

   Email       : String(80);
   PhoneNumber : String(12);
   Supplier    : Association to Suppliers;
}

entity Details : cuid, managed {
   Unit    : String;
   Height  : Decimal(10, 2);
   Width   : Decimal(10, 2);
   Depth   : Decimal(10, 2);
   Weight  : Decimal(10, 2);
   Product : Association to Products;
}

entity Products : cuid, managed {
   ImageUrl     : String(600);
   Product      : String(80);
   Description  : String(500);
   Category     : String;
   SubCategory  : String;
   Availibility : String;
   Rating       : Double;

   @Measures.Unit: Unit
   Price        : Decimal(10, 2);

   @Common.IsCurrency
   Unit         : String(3) default 'USD';
   Supplier     : Association to Suppliers;
}

entity VH_Categories : cuid, CodeList {

};
