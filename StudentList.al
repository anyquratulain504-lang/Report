table 50101 StudentList
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Name"; Text[15])
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

        }
    }

    keys
    {
        key(PK; "ID")
        {
            Clustered = true;
        }
    }
}