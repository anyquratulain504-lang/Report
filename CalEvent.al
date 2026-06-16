codeunit 50113 EventSubscriber
{
    [EventSubscriber(ObjectType::Codeunit,
     Codeunit::"CalculatorManagement",
     'OnAfterAddition', '',
     false, false)]
    Local procedure HandleAfterAddition(Num1: Decimal; Num2: Decimal; Result: Decimal)
    begin
        Message('After Addition: %1 + %2 = %3', Num1, Num2, Result);
    end;

    [EventSubscriber(ObjectType::Codeunit,
     Codeunit::"CalculatorManagement",
      'OnAfterSubtract', '',
       false, false)]
    Local procedure HandleAfterSubtraction(Num1: Decimal; Num2: Decimal; Result: Decimal)
    begin
        Message('After Subtraction: %1 - %2 = %3', Num1, Num2, Result);
    end;

    [EventSubscriber(ObjectType::Codeunit,
     Codeunit::"CalculatorManagement",
      'OnAfterMultiply', '',
       false, false)]
    Local procedure HandleAfterMultiplication(Num1: Decimal; Num2: Decimal; Result: Decimal)
    begin
        Message('After Multiplication: %1 * %2 = %3', Num1, Num2, Result);
    end;

    [EventSubscriber(ObjectType::Codeunit,
     Codeunit::"CalculatorManagement",
      'OnAfterDivide', '',
       false, false)]
    Local procedure HandleAfterDivision(Num1: Decimal; Num2: Decimal; Result: Decimal)
    begin
        Message('After Division: %1 / %2 = %3', Num1, Num2, Result);
    end;

}