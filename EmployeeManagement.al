table 50110 EmployeeManagement
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Employee ID"; Integer)
        {
            DataClassification = CustomerContent;
        }

        field(2; "Employee Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }

        field(3; Department; Text[50])
        {
            DataClassification = CustomerContent;
        }

        field(4; Salary; Decimal)
        {
            DataClassification = CustomerContent;
        }

        field(5; "Joining Date"; Date)
        {
            DataClassification = CustomerContent;
        }

        field(6; Active; Boolean)
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Employee ID")
        {
            Clustered = true;
        }
    }
}