page 50103 EmployeeManagementList
{
    PageType = List;
    SourceTable = EmployeeManagement;
    UsageCategory = Lists;
    ApplicationArea = All;

    Layout
    {
        area(Content)
        {
            repeater(General)
            {
                Field("Employee ID"; Rec."Employee ID")
                {
                    ApplicationArea = All;
                }
                Field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                Field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                }
                Field(Salary; Rec.Salary)
                {
                    ApplicationArea = All;
                }
                Field("Joining Date"; Rec."Joining Date")
                {
                    ApplicationArea = All;
                }
                Field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}