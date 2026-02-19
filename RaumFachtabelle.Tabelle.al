table 50108 "RaumFachtabelle"
{
    DataClassification = ToBeClassified;
    Caption = 'Raum/Fach Tabelle';
    fields
    {
        field(1; "Room No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Room No.';
            NotBlank = True;
        }
        field(2; "Subject Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Subject Code';
            NotBlank = True;

            trigger OnValidate()
            begin
                "Room Description" := 'Auto Room Description';
                "Subject Description" := 'Auto Subject Description';
            end;
        }
        field(10; "Room Description"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Room Description';
        }
        field(11; "Subject Description"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Subjekt Description';
        }
    }
    keys
    {
        key(pk; "Room No.", "Subject Code")
        {
            Clustered = true;
        }
    }
}