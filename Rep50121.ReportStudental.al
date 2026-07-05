report 50121 "Report Student"
{
    ApplicationArea = All;
    Caption = 'Report Student';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'StudentReport.docx';
    DefaultLayout = Word;
    dataset
    {
        dataitem(StudentTable; StudentTable)
        {
            column(StudentID; "Student ID")
            { }
            column(StudentName; "Student Name")
            { }
            column(Marks; Marks)
            { }
            column(Gender; Gender)
            { }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                { }
            }
        }
        actions
        {
            area(Processing)
            { }
        }
    }
}
