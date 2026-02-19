table 50113 "SchuleCuetabelle"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; ID; Code[10]) { }

        field(10; "Students Total"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Schülertabelle");
            Editable = false;
        }

        field(11; "Students Male"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Schülertabelle" WHERE(Sex = CONST(Male)));
            Editable = false;
        }

        field(12; "Students Female"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Schülertabelle" WHERE(Sex = CONST(Female)));
            Editable = false;
        }

        field(13; "Teachers Total"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Lehrertabelle");
            Editable = false;
        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}
