table 50105 "Raumtabelle"
{
    DataClassification = ToBeClassified;
    Caption = 'Raumtabelle';
    fields
    {
        field(1; "Room No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Room No.';
            NotBlank = True;
        }
        field(10; Description; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(11; Capacity; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Capacity';
            MinValue = 1;
            MaxValue = 1000;
        }
    }
    keys
    {
        key(pk; "Room No.", "Capacity")
        {
            Clustered = true;
        }
    }
}