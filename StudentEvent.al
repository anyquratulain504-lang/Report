codeunit 50117 StudentSubscriber
{
    [EventSubscriber(ObjectType::Codeunit,
    Codeunit::StudentManagement,
    'OnStudentStatusUpdated',
    '',
    false,
    false)]

    procedure ShowStatusMessage(StudentName: Text)
    begin
        Message('Status updated for %1', StudentName);
    end;
}