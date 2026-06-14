codeunit 50107 StudentManagementCodeunit
{
    trigger OnRun()
    var
        Marks: List of [Decimal];
    begin
        // Add multiple subject marks
        Marks.Add(85);
        Marks.Add(78);
        Marks.Add(92);
        Marks.Add(74);
        Marks.Add(88);

        ShowResult(1, Marks);
    end;

    procedure ValidateMarks(Mark: Decimal)
    begin
        if (Mark < 0) or (Mark > 100) then
            Error('Marks must be between 0 and 100');
    end;

    procedure CalculateTotal(Marks: List of [Decimal]): Decimal
    var
        Total: Decimal;
        Mark: Decimal;
    begin
        Total := 0;

        foreach Mark in Marks do begin
            ValidateMarks(Mark);
            Total += Mark;
        end;

        exit(Total);
    end;

    procedure CalculateAverage(Marks: List of [Decimal]): Decimal
    var
        Total: Decimal;
    begin
        Total := CalculateTotal(Marks);

        if Marks.Count() = 0 then
            exit(0);

        exit(Total / Marks.Count());
    end;

    procedure GetGrade(Average: Decimal): Text
    begin
        if Average >= 90 then
            exit('A+')
        else if Average >= 80 then
            exit('A')
        else if Average >= 70 then
            exit('B')
        else if Average >= 60 then
            exit('C')
        else
            exit('Fail');
    end;

    procedure ShowResult(StudentNo: Integer; Marks: List of [Decimal])
    var
        Total: Decimal;
        Average: Decimal;
        Grade: Text;
    begin
        Total := CalculateTotal(Marks);
        Average := CalculateAverage(Marks);
        Grade := GetGrade(Average);

        Message(
            'Student No: %1\Total: %2\Average: %3\Grade: %4',
            StudentNo,
            Total,
            Average,
            Grade
        );
    end;
}