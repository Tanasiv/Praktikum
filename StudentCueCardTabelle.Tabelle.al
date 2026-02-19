table 50106 "StudentCueCardtabelle"
{
    DataClassification = CustomerContent;
    Caption = 'Student Cue Card Tabelle';

    fields
    {
        field(1; "ID"; Code[20])
        {
            DataClassification = CustomerContent;
        }

        field(2; "Students Male"; Integer)
        {
            FieldClass = FlowField;
            Editable = false;
            CalcFormula =count("Schülertabelle" Where (Sex = const(male)));
            
        }

        field(3; "Students Female"; Integer)
        {
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = count("Schülertabelle" Where (Sex = const(female)));;
            
        }

        field(4; "Students Total"; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = count("Schülertabelle");
        }
    }

    keys
    {
        key(pk; "ID")
        {
            Clustered = true;
        }
    }
}