report 50110 "Lehrer Report"
{
    Caption = 'Lehrer Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'LehrerReport.rdl';

    dataset
    {
        dataitem(Lehrer; "Lehrertabelle")
        {
            column(No_; "No.")
            {
                IncludeCaption = true;
            }

            column(Name; Name)
            {
                IncludeCaption = true;
            }

            column(TraineeTeacher; "Trainee Teacher")
            {
                IncludeCaption = true;
            }

            trigger OnPreDataItem()
            begin
                case Auswahl of
                    Auswahl::Trainee:
                        SetRange("Trainee Teacher", true);

                    Auswahl::Finished:
                        SetRange("Trainee Teacher", false);
                end;
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Optionen)
                {
                    field(Auswahl; Auswahl)
                    {
                        ApplicationArea = All;
                        Caption = 'Auswahl';
                        OptionCaption = 'Alle Lehrer,In Ausbildung,Fertig ausgebildet';
                    }
                }
            }
        }
    }

    var
        Auswahl: Option Alle,Trainee,Finished;
}
