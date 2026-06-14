page 50108 TaxManagementPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(NetSalary)
            {
                ApplicationArea = All;
                Caption = 'Calculate Net Salary';
                trigger OnAction()
                var
                    TaxMgt: Codeunit TaxManagementCodeunit;
                begin
                    TaxMgt.run;
                end;
            }

        }
    }
}