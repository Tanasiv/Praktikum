report 50100 "Stufe Fach Reports"
{
    Caption = 'Stufe, Fach Reports';
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'ReportStufeFach.rdl';

    dataset
    {
        dataitem(Stufe; "Stufetabelle")
        {
            column(StufeGradeCode; "Grade Code")
            {
                IncludeCaption = true;
            }

            column(Description; Description)
            {
                IncludeCaption = true;
            }
            dataitem(StufeFach; "StufeFachtabelle")
            {
                DataItemLinkReference = Stufe;
                DataItemLink = "Grade Code" = field("Grade Code");
                DataItemTableView = Sorting("Grade Code");

                column(GradeCode; "Grade Code")
                {
                    IncludeCaption = true;
                }
                column(SubjectCode; "Subject Code")
                {
                    IncludeCaption = true;
                }

                column(GradeDescription; "Grade Description")
                {
                    IncludeCaption = true;
                }

                column(SubjectDescription; "Subject Description")
                {
                    IncludeCaption = true;
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    field(ShowDetails; ShowDetails)
                    {
                        ApplicationArea = All;
                        Caption = 'Show Details';
                    }
                }
            }
        }
    }

    var
        ShowDetails: Boolean;
}
