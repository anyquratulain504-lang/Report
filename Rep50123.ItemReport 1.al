report 50123 "Item Report"
{
    ApplicationArea = All;
    Caption = 'Item Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'ItemReport.rdlc';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(Item; Item)
        {
            column(IdentifierCode; "Identifier Code")
            {
            }
            column(IndirectCost; "Indirect Cost %")
            {
            }
            column(No; "No.")
            {
            }
            column(Picture; Picture)
            {
            }
            column(Profit; "Profit %")
            {
            }
            column(PurchasesQty; "Purchases (Qty.)")
            {
            }
            column(NoofSubstitutes; "No. of Substitutes")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
