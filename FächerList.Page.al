Page 50105 "Fächer List"
{
    PageType = List;
    Caption = 'Fächer List';
    SourceTable = "Fächertabelle";
    Editable = true;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                }

                field(Description; Rec.Description)
                {
                }
                field("Description 2"; Rec."Description 2")
                {
                }

                field("Compulsory Subject"; Rec."Compulsory Subject")
                {
                }
                field("Selectable since class"; Rec."Selectable since class")
                {
                }

            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }

}