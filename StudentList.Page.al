page 50101 "Student List"
{
    PageType = List;
    Caption = 'Student List';
    SourceTable = "Schülertabelle";
    CardPageID = "Student Card";
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

                field(Classcode; Rec.Classcode)
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
            action(OpenStudentReport)
            {
                Caption = 'Schüler Report';
                Image = Print;
                ApplicationArea = All;

                trigger OnAction()
                var
                    StudentReport: Report 50111;
                begin
                    StudentReport.SetTableView(Rec);
                    StudentReport.RunModal();
                end;
            }
        }
    }
}
