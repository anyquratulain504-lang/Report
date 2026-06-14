page 50107 StudentManagementPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(Average)
            {
                ApplicationArea = All;
                Caption = 'Calculate Average';
                trigger OnAction()
                var
                    StudentMgt: Codeunit StudentManagementCodeunit;
                begin
                    StudentMgt.run;
                end;
            }

        }
    }
}