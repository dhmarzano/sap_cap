using {ServiceCatalog as Call} from '../service';

annotate Call.ProductsSet with {

    Product      @title: 'Producto';
    Description  @title: 'Descripción'  @UI.MultiLineText;
    Category     @title: 'Categoria';
    SubCategory  @title: 'SubCategoria';
    Availibility @title: 'Disponibilidad';
    Rating       @title: 'Valoración';
    Price        @title: 'Precio Unitario';
    Supplier     @title: 'Proveedor';

};

annotate Call.ProductsSet with @(UI.SelectionFields: [
    Supplier_ID,
    Category
]);
