table 50101 StudentTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Student Name"; Text[15])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "City"; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Age"; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if Age < 5 then
                    Error('Age must be greater than 5');
            end;
        }
        field(5; Status; Enum StudentStatus)
        {
            DataClassification = ToBeClassified;
        }
        field(6; Gender; Option)
        {
            OptionMembers = Male,Female;
            DataClassification = ToBeClassified;
        }
        field(7; Marks; Decimal)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                if (Marks < 0) or (Marks > 100) then
                    Error('Marks must be between 0 and 100');
            end;
        }
    }

    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }
}