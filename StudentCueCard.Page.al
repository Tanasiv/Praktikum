page 50110 "Student Cue Card"
{
    PageType = Card;
    Caption = 'Student Cue Card';
    SourceTable = "StudentCueCardtabelle";
    ApplicationArea = All;
    Editable = true;

    layout
    {
        area(Content)
        {
            group(Group)
            {
                field("ID"; Rec."ID")
                {
                    ApplicationArea = All;
                }

                field("Students Male"; Rec."Students Male")
                {
                    ApplicationArea = All;
                }

                field("Students Female"; Rec."Students Female")
                {
                    ApplicationArea = All;
                }

                field("Students Total"; Rec."Students Total")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.Get('General') then begin
            Rec.Init();
            Rec."ID" := 'General'; 
            Rec.Insert();
        end;

        Rec.CalcFields("Students Total");;
    end;
}
