page 50114 CalculatorManagementCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CalculatorTable;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Num1; Rec.Num1) { }
                field(Num2; Rec.Num2) { }
                field(Result; Rec.Result) { }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Addition)
            {
                Caption = 'Addition';
                trigger OnAction()
                var
                    cal: Codeunit CalculatorManagement;
                begin
                    Rec.Result := cal.Addition(Rec.Num1, Rec.Num2);
                end;
            }
            action(Subtraction)
            {
                Caption = 'Subtraction';
                trigger OnAction()
                var
                    cal: Codeunit CalculatorManagement;
                begin
                    Rec.Result := cal.Subtract(Rec.Num1, Rec.Num2);
                end;
            }
            action(Multiplication)
            {
                Caption = 'Multiplication';
                trigger OnAction()
                var
                    cal: Codeunit CalculatorManagement;
                begin
                    Rec.Result := cal.Multiply(Rec.Num1, Rec.Num2);
                end;
            }
            action(Division)
            {
                Caption = 'Division';
                trigger OnAction()
                var
                    cal: Codeunit CalculatorManagement;
                begin
                    Rec.Result := cal.Divide(Rec.Num1, Rec.Num2);
                end;
            }
        }
    }


}