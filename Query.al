query 50115 StudentQuery
{
    Caption = 'Student Query';
    QueryType = Normal;

    elements
    {
        dataitem(StudentTable; StudentTable)
        {
            column(Student_ID; "Student ID")
            { }
            column(Student_Name; "Student Name")
            { }
            column(Age; Age) { }
            column(City; City) { }

            column(Marks; Marks) { }
            column(Status; Status) { }

            filter(Marks_Filter; "Marks")
            {

            }
        }
    }
}