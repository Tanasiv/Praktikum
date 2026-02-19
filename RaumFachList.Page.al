Page 50107 "Raum Fach List"
{
    PageType = List;
    Caption = 'Raum/Fach List';
    SourceTable = "RaumFachTabelle";
    Editable = true;
    UsageCategory = Lists;
    ApplicationArea = All;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Room No."; Rec."Room No.")
                {
                }
                field("Subject Code"; Rec."Subject Code")
                {
                }

                field("Room Description"; Rec."Room Description")
                {
                }
                field("Subject Description"; Rec."Subject Description")
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

