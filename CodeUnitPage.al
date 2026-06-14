page 50103 MyfirstCodeunit
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(Sum)
            {
                ApplicationArea = All;
                Caption = 'Calculate Sum';
                trigger OnAction()
                begin
                    Mycodeunit.run;
                end;
            }

        }
    }
    var
        Mycodeunit: Codeunit MyfirstCodeunit;
}