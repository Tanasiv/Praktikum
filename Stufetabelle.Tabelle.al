table 50107 "Stufetabelle"
{
    DataClassification = CustomerContent;
    Caption = 'Stufetabelle';
    fields
    {
        field(1; "Grade Code"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Grade Code';
            NotBlank = True;
        }

        field(10; Description; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
    }
    keys
    {
        key(pk; "Grade Code", "Description")
        {
            Clustered = true;
        }
    }
}