pageextension 50101 " Contact  Information" extends StudentListPage
{
    Layout
    {
        addLast(Group)
        {
            field("Phone Number"; Rec."Phone Number")
            {
                ApplicationArea = All;
            }
            field("Email"; Rec."Email")
            {
                ApplicationArea = All;
            }
        }
    }
}
