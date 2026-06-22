codeunit 50116 StudentManagement
{
    procedure UpdateStatus()
    var
        StudentRec: Record StudentTable;
    begin
        if StudentRec.FindSet() then
            repeat
                if StudentRec.Marks >= 50 then
                    StudentRec.Status := StudentRec.Status::Passed
                else
                    StudentRec.Status := StudentRec.Status::Failed;

                StudentRec.Modify();

                OnStudentStatusUpdated(StudentRec."Student Name");
            until StudentRec.Next() = 0;
    end;

    procedure FindTopper()
    var
        StudentRec: Record StudentTable;
    begin
        StudentRec.SetCurrentKey(Marks);

        if StudentRec.FindLast() then
            Message('Topper is %1 with %2 marks',
            StudentRec."Student Name",
            StudentRec.Marks);
    end;

    procedure FindLowest()
    var
        StudentRec: Record StudentTable;
    begin
        StudentRec.SetCurrentKey(Marks);

        if StudentRec.FindFirst() then
            Message('Lowest marks student is %1 with %2 marks',
            StudentRec."Student Name",
            StudentRec.Marks);
    end;

    procedure FilterPassedStudents()
    var
        StudentRec: Record StudentTable;
    begin
        StudentRec.SetRange(Status, StudentRec.Status::Passed);

        if StudentRec.FindSet() then
            repeat
                Message(StudentRec."Student Name");
            until StudentRec.Next() = 0;
    end;

    [IntegrationEvent(false, false)]
    procedure OnStudentStatusUpdated(StudentName: Text)
    begin
    end;
}