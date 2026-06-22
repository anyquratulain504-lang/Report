page 50100 StudentListPage
{
    PageType = List;
    SourceTable = StudentTable;
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Student List';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field("Student Name"; Rec."Student Name")
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
                field("Status"; Rec."Status")
                {
                    ApplicationArea = All;
                }
                field("Marks"; Rec."Marks")
                {
                    ApplicationArea = All;
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(UpdateStatus)
            {
                ApplicationArea = All;
                Caption = 'Update Status';

                trigger OnAction()
                var
                    StudentMgmt: Codeunit StudentManagement;
                begin
                    StudentMgmt.UpdateStatus();
                end;
            }

            action(FindTopper)
            {
                ApplicationArea = All;
                Caption = 'Find Topper';

                trigger OnAction()
                var
                    StudentMgmt: Codeunit StudentManagement;
                begin
                    StudentMgmt.FindTopper();
                end;
            }

            action(FindLowest)
            {
                ApplicationArea = All;
                Caption = 'Find Lowest';

                trigger OnAction()
                var
                    StudentMgmt: Codeunit StudentManagement;
                begin
                    StudentMgmt.FindLowest();
                end;
            }

            action(ShowPassedStudents)
            {
                ApplicationArea = All;
                Caption = 'Show Passed Students';

                trigger OnAction()
                var
                    StudentMgmt: Codeunit StudentManagement;
                begin
                    StudentMgmt.FilterPassedStudents();
                end;
            }
        }
    }
}