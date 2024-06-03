using {ServiceCatalog as Call} from '../service';

annotate Call.ProductsSet with {
    ImageUrl     @title: 'Imagen';
    Product      @title: 'Producto';
    Description  @title: 'Descripción'  @UI.MultiLineText;
    Category     @title: 'Categoria';
    SubCategory  @title: 'SubCategoria';
    Availibility @title: 'Disponibilidad';
    Rating       @title: 'Valoración';
    Price        @title: 'Precio Unitario';
    Supplier     @title: 'Proveedor';

};

annotate Call.ProductsSet with @(
    UI.SelectionFields: [
        Supplier_ID,
        Category
    ],

    UI.HeaderInfo     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Productos',
        TypeNamePlural: 'Productos',
    },

    UI.LineItem       : [
        {
            $Type                : 'UI.DataField',
            Value                : ImageUrl,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '6rem',
            },
        },
        {
            $Type: 'UI.DataField',
            Value: Product
        },
        {
            $Type                : 'UI.DataField',
            Value                : Category,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem',
            },
        },
        {
            $Type                : 'UI.DataField',
            Value                : SubCategory,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem',
            },
        },
        {
            $Type                : 'UI.DataField',
            Value                : Availibility,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem',
            },
        },

        {
            $Type : 'UI.DataFieldForAnnotation',
            Target: '@UI.DataPoint',
        },

        {
            $Type                : 'UI.DataField',
            Value                : Price,
            ![@HTML5.CssDefaults]: {
                $Type: 'HTML5.CssDefaultsType',
                width: '8rem',
            },
        },
    ],

    UI.DataPoint      : {
        $Type        : 'UI.DataPointType',
        Value        : Rating,
        Visualization: #Rating
    },
);
