pageextension 50100 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(MyField; Rec.Name)
            {
                ApplicationArea = All;
            }
        }
    }
}