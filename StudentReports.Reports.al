report 50111 "Student Report"
{
    Caption = 'Student Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'ReportStudent.rdl';

    dataset
    {
        dataitem(Student; "SchuleCuetabelle")
        {
            column(Students_Female; "Students Female")
            {
                IncludeCaption = true;
            }

            column(Students_Male; "Students Male")
            {
                IncludeCaption = true;
            }

            column(Students_Total; "Students Total")
            {
                IncludeCaption = true;
            }

        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {

            }
        }
    }

    var
        Auswahl: Option Alle,Female,Male;
        TotalCount: Integer;
}
