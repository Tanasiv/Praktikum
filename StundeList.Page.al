page 50113 "Stunde List"
{
    PageType = List;
    SourceTable = "Stundetabelle";
    Caption = 'Stunde List';
    Editable = true;
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Lesson; Rec.Lesson)
                {
                    ApplicationArea = All;
                }
                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = All;
                }
                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
