page 50100 StudentListPage
{
    PageType = List;
    SourceTable = StudentList;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Student List';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("ID"; Rec."ID")
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                }
                field("City"; Rec."City")
                {
                    ApplicationArea = All;
                }
                field("Age"; Rec."Age")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}