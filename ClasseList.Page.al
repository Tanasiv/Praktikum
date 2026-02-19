Page 50111 "Classe List"
{
    PageType = List;
    Caption = 'Classe List';
    SourceTable = "Classetabelle";
    Editable = false;
    UsageCategory = Lists;
    ApplicationArea = All;
    CardPageID = "Classe Document";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Class Code"; Rec."Class Code")
                {
                }

                field("Grade Code"; Rec."Grade Code")
                {
                }
                field("Class Description"; Rec."Class Description")
                {
                }

                field("Grade Description"; Rec."Grade Description")
                {
                }
                field("Students Total"; Rec."Students Total")
                {
                }
                field("Students Female"; Rec."Students Female")
                {
                }
                field("Students Male"; Rec."Students Male")
                {
                }
                field("Teacher Code"; Rec."Teacher Code")
                {
                }
                field("Teacher Name"; Rec."Teacher Name")
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