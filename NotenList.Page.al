page 50112 "Noten List"
{
    PageType = List;
    SourceTable = "Notentabelle";
    Caption = 'Noten List';
    Editable = true;
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(ClassCode; Rec.ClassCode)
                {
                    ApplicationArea = All;
                }
                field(GradeCode; Rec.GradeCode)
                {
                    ApplicationArea = All;
                }
                field(StudentCode; Rec.StudentCode)
                {
                    ApplicationArea = All;
                    Caption = 'Student Code';
                }
                field(SubjectCode; Rec.SubjectCode)
                {
                    ApplicationArea = All;
                    Caption = 'Subject Code';
                }
                field(HalfYear; Rec.HalfYear)
                {
                    ApplicationArea = All;
                    Caption = 'School Certificate Type';
                }
                field(Mark; Rec.Mark)
                {
                    ApplicationArea = All;
                    Caption = 'Mark';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(OpenClassList)
            {
                Caption = 'Open Class List';
                ApplicationArea = All;
                Image = View;

                trigger OnAction()
                var
                    ClassPage: Page "Classe List";
                begin
                    ClassPage.SetTableView(Rec);
                    ClassPage.RunModal();
                end;
            }
        }
    }
}
