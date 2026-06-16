codeunit 50112 CalculatorManagement
{
    procedure Addition(Num1: Decimal; Num2: Decimal): Decimal
    var
        Result: Decimal;
    begin
        Result := Num1 + Num2;
        OnAfterAddition(Num1, Num2, Result);
        exit(Result);
    end;

    procedure Subtract(Num1: Decimal; Num2: Decimal): Decimal
    var
        Result: Decimal;
    begin
        Result := Num1 - Num2;
        OnAfterSubtract(Num1, Num2, Result);
        exit(Result);
    end;

    procedure Multiply(Num1: Decimal; Num2: Decimal): Decimal
    var
        Result: Decimal;
    begin
        Result := Num1 * Num2;
        OnAfterMultiply(Num1, Num2, Result);
        exit(Result);
    end;

    procedure Divide(Num1: Decimal; Num2: Decimal): Decimal
    var
        Result: Decimal;
    begin
        if Num2 = 0 then
            Error('Cannot divided by zero');

        Result := Num1 / Num2;
        OnAfterDivide(Num1, Num2, Result);
        exit(Result);
    end;

    [IntegrationEvent(false, false)]
    procedure OnAfterAddition(Num1: Decimal; Num2: Decimal; Result: Decimal)
    begin
    end;

    [IntegrationEvent(false, false)]
    procedure OnAfterSubtract(Num1: Decimal; Num2: Decimal; Result: Decimal)
    begin
    end;

    [IntegrationEvent(false, false)]
    procedure OnAfterMultiply(Num1: Decimal; Num2: Decimal; Result: Decimal)
    begin
    end;

    [IntegrationEvent(false, false)]
    procedure OnAfterDivide(Num1: Decimal; Num2: Decimal; Result: Decimal)
    begin
    end;
}