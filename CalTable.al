table 50111 CalculatorTable
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "NO:"; Integer) { DataClassification = ToBeClassified; }
        field(2; Num1; Decimal) { DataClassification = ToBeClassified; }
        field(3; Num2; Decimal) { DataClassification = ToBeClassified; }
        field(4; Result; Decimal) { DataClassification = ToBeClassified; }
    }

    keys
    {
        key(PK; "NO:")
        {
            Clustered = true;
        }
    }

}