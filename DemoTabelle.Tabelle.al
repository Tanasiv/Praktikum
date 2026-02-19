Table 50100 "DemoTabelle"
{
    DataClassification = ToBeClassified;
    Caption = 'DemoTabelle';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
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

        field(12; Address; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Address';
        }

        field(13; "Address 2"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Address 2';
        }

        field(14; Postcode; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Postcode';
        }

        field(15; City; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'City';
        }

        field(16; "Date of Birth"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date of Birth';
        }
    }

    keys
    {
        key(pk; "No.", "Name 2")
        {
            Clustered = true;
        }
    }

}