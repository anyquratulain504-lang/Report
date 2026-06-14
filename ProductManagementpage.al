page 50106 ProductManagement
{
    PageType = Card;
    SourceTable = ProductManagement;
    ApplicationArea = All;
    UsageCategory = Administration;
    Layout
    {
        area(Content)
        {
            group(General)
            {
                Field("Product ID"; Rec."Product ID")
                {
                    ApplicationArea = All;
                }
                Field("Product Name"; Rec."Product Name")
                {
                    ApplicationArea = All;
                }
                Field("Category"; Rec.Category)
                {
                    ApplicationArea = All;
                }
                Field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                Field("Stock Quantity"; Rec."Stock Quantity")
                {
                    ApplicationArea = All;
                }
                Field("Reorder Level"; Rec."Reorder Level")
                {
                    ApplicationArea = All;
                }
                Field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(InventoryValue)
            {
                ApplicationArea = All;
                Caption = 'Inventory Value';

                trigger OnAction()
                begin
                    Message(
                    'Inventory Value: %1',
                    Rec.GetInventoryValue());
                end;
            }
            action(CheckStock)
            {
                ApplicationArea = All;
                Caption = 'Check Stock';

                trigger OnAction()
                begin
                    if Rec.NeedsReorder() then
                        Message('Reorder Required')
                    else
                        Message('Stock Available');
                end;
            }
        }
    }
}