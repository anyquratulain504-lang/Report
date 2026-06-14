codeunit 50103 MyfirstCodeunit
{
    trigger OnRun()
    begin
        num1 := 45;
        num2 := 55;
        add(num1, num2);
    end;

    procedure add(a: Integer; b: Integer)
    begin
        sum := a + b;
        Message('The sum of %1 and %2 is %3', a, b, sum);
    end;

    var
        num1: Integer;
        num2: Integer;
        sum: Integer;
}