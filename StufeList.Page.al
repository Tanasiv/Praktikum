Page 50108 "Stufe List"
{
    PageType = List;
    Caption = 'Stufe List';
    SourceTable = "StufeTabelle";
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
                }
                field(Description; Rec.Description)
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
