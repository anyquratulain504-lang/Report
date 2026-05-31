tableextension 50101 "Contact Information" extends StudentList
{
    fields
    {
        field(50100; "Phone Number"; Integer)
        {
            Caption = 'Phone Number';
            DataClassification = ToBeClassified;
        }
        field(50101; Email; Text[50])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }

    }
}
