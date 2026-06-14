codeunit 50108 TaxManagementCodeunit
{
    trigger OnRun()
    begin
        ShowTaxDetails(80000);
    end;

    procedure ValidateSalary(Salary: Decimal)
    begin
        if Salary <= 0 then
            Error('Salary must be greater than zero.');
    end;

    procedure CalculateTax(Salary: Decimal): Decimal
    begin
        ValidateSalary(Salary);

        if Salary <= 50000 then
            exit(Salary * 0.05)
        else if Salary <= 100000 then
            exit(Salary * 0.10)
        else
            exit(Salary * 0.15);
    end;

    procedure CalculateNetSalary(Salary: Decimal): Decimal
    var
        TaxAmount: Decimal;
    begin
        TaxAmount := CalculateTax(Salary); // same codeunit call
        exit(Salary - TaxAmount);
    end;

    procedure ShowTaxDetails(Salary: Decimal)
    var
        TaxAmount: Decimal;
        NetSalary: Decimal;
    begin
        TaxAmount := CalculateTax(Salary); // same codeunit call
        NetSalary := CalculateNetSalary(Salary); // same codeunit call

        Message(
            'Gross Salary: %1\Tax: %2\Net Salary: %3',
            Salary,
            TaxAmount,
            NetSalary
        );
    end;
}