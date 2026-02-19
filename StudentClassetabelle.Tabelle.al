table 50111 "Student Classe Tabelle"
{
    DataClassification = ToBeClassified;
    Caption = 'StudentClassetabelle';

    fields
    {
        field(1; "Class Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Class Code';
            NotBlank = True;
        }
        field(2; "Student Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Class Code';
            TableRelation = "Schülertabelle";
        }
        field(10; Name; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
        field(11; "Name 2"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Name 2';
        }
        field(12; "Missed Lessons without excuse"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Missed Lessons without excuse';
            MinValue = 0;
        }
        field(13; "Missed Lessons with excuse"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Missed Lessons wit excuse';
            MinValue = 0;
        }
        field(14; "Transfer at risk"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Transfer at risk';
        }
    }

    keys
    {
        key(pk; "Name", "Name 2")
        {
            Clustered = true;
        }
    }
}