table 50110 "Classetabelle"
{
    DataClassification = ToBeClassified;
    Caption = 'Classetabelle';

    fields
    {
        field(1; "Class Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Class Code';
            NotBlank = True;
        }
        field(2; "Grade Code"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Grade Code';
            TableRelation = RaumFachtabelle;
        }
        field(10; "Class Description"; text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Class Description';
        }
        field(11; "Grade Description"; text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Grade Description';
        }
        field(12; "Students Total"; Integer)
        {
            Caption = 'Students Total';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count("Schülertabelle");
        }
        field(13; "Students Female"; Integer)
        {
            Caption = 'Students Female';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count("Schülertabelle" Where (Sex = const(female)));;
        }
        field(14; "Students Male"; Integer)
        {
            Caption = 'Students Male';
            Editable = false;
            FieldClass = FlowField;
             CalcFormula = count("Schülertabelle" Where (Sex = const(male)));;
        }

        field(15; "Teacher Code"; Code[20])
        {
            Caption = 'Teacher Code';
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = Lehrertabelle;
        }

        field(16; "Teacher Name"; Text[50])
        {
            Caption = 'Teacher Name';
            DataClassification = CustomerContent;
        }


    }
    keys
    {
        key(pk; "Class Code", "Grade Code")
        {
            Clustered = true;
        }
    }
}