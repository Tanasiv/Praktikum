page 50109 "Stufe Fach List"
{
    PageType = List;
    Caption = 'Stufe/Fach List';
    SourceTable = "StufeFachTabelle";
    Editable = true;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Grade Code"; Rec."Grade Code")
                {
                    ApplicationArea = All;
                }
                field("Subject Code"; Rec."Subject Code")
                {
                    ApplicationArea = All;
                }
                field("Grade Description"; Rec."Grade Description")
                {
                    ApplicationArea = All;
                }
                field("Subject Description"; Rec."Subject Description")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
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
                ApplicationArea = All;
                Caption = 'My Action';

                trigger OnAction()
                begin
                end;
            }
        }
    }
}
