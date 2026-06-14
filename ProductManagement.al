table 50105 ProductManagement
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Product ID"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Product Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "Product Name" = '' then
                    Error('Product Name is required');
            end;

        }
        field(3; Category; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Unit Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "Unit Price" <= 0 then
                    Error('Price must be greater than zero');
            end;

        }
        field(5; "Stock Quantity"; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "Stock Quantity" < 0 then
                    Error('Stock cannot be negative');
            end;

        }
        field(6; "Reorder Level"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(7; Active; Boolean)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Pk; "Product ID")
        {
            Clustered = true;
        }
    }



    trigger OnInsert()
    begin
        Message('New Product Created');
    end;

    trigger OnModify()
    begin
        if "Stock Quantity" <= "Reorder Level" then
            Message('Reorder Required');
        CheckStock();
    end;

    trigger OnDelete()
    begin
        Message('Product Deleted');
    end;

    procedure GetInventoryValue(): Decimal
    begin
        exit("Unit Price" * "Stock Quantity");
    end;

    procedure NeedsReorder(): Boolean
    begin
        exit("Stock Quantity" <= "Reorder Level");
    end;

    procedure CheckReorder()
    begin
        if "Stock Quantity" <= "Reorder Level" then
            Message('Reorder Required');
    end;

    [IntegrationEvent(false, false)]
    procedure OnLowStock()
    begin
    end;

    procedure CheckStock()
    begin
        if "Stock Quantity" <= "Reorder Level" then
            OnLowStock();
    end;
}

