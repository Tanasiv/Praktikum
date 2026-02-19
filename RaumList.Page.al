Page 50106 "Raum List"
{
    PageType = List;
    Caption = 'Raum List';
    SourceTable = "Raumtabelle";
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

                field("Description"; Rec."Description")
                {
                }
                field(Capacity; Rec.Capacity)
                {
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Raum/Fach List")
            {
                ApplicationArea = All;
                Caption = 'Raum/Fach List';
                RunObject = page "Raum Fach List";
                RunPageLink = "Room No." = field("Room No.");
                Image = List;
            }
        }
    }
}
