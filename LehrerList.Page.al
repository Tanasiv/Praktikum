page 50103 "Lehrer List"
{
    Caption = 'Lehrer List';
    PageType = List;
    SourceTable = "Lehrertabelle";
    CardPageID = "Lehrer Card";
    Editable = false;
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }

                field("Trainee Teacher"; Rec."Trainee Teacher")
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
            action(OpenLehrerReport)
            {
                Caption = 'Lehrer Report';
                ApplicationArea = All;
                Image = Print;

                trigger OnAction()
                var
                    LehrerReport: Report 50110;
                begin
                    LehrerReport.SetTableView(Rec);
                    LehrerReport.RunModal();
                end;
            }
        }
    }
}
