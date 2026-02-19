table 50109 "StufeFachtabelle"
{
    DataClassification = CustomerContent;
    Caption = 'Stufe/Fach Tabelle';
    fields
    {
        field(1; "Grade Code"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Grade Code';
            NotBlank = True;
        }
        field(2; "Subject Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Subjekt Code';
            NotBlank = True;
        }

        field(10; "Grade Description"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Grade Description';
        }
        field(11; "Subject Description"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Subject Description';
        }
        field(12; Description; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
    }
    keys
    {
        key(pk; "Grade Code", "Subject Code")
        {
            Clustered = true;
        }
    }
}