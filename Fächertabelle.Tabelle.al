table 50104 "Fächertabelle"
{
    DataClassification = CustomerContent;
    Caption = 'Fächertabelle';

    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Code';
            NotBlank = True;
        }

        field(10; Description; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }

        field(11; "Description 2"; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Description 2';
        }

        field(12; "Compulsory Subject"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Compulsory Subject';
        }
        field(13; "Selectable since class"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Selectable since class';
        }
    }

    keys
    {
        key(pk; "Code", "Description")
        {
            Clustered = true;
        }
    }
}