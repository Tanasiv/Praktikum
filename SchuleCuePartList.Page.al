page 50114 "SchuleCuePartList"
{
    PageType = CardPart;
    SourceTable = "SchuleCuetabelle";
    ApplicationArea = All;
    Caption = 'Student Cue Card';

    layout
    {
        area(Content)
        {
            cuegroup(General)
            {
                field("Students Total"; Rec."Students Total")
                {
                    DrillDownPageID = "Student List";
                }

                field("Students Male"; Rec."Students Male")
                {
                    DrillDownPageID = "Student List";
                }

                field("Students Female"; Rec."Students Female")
                {
                    DrillDownPageID = "Student List";
                }

                field("Teachers Total"; Rec."Teachers Total")
                {
                    DrillDownPageID = "Lehrer List";
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.Reset();

        if not Rec.Get('1') then begin
            Rec.Init();
            Rec.ID := '1';
            Rec.Insert();
        end;

        Rec.CalcFields(
            "Students Total",
            "Students Male",
            "Students Female",
            "Teachers Total");
    end;
}

