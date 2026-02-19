table 50103 "Lehrertabelle"
{
    DataClassification = ToBeClassified;
    Caption = 'Lehrertabelle';
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
            NotBlank = True;
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
            TableRelation = "Post Code";
            ValidateTableRelation = False;
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

        field(17; "Student since"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Student since';
        }

        field(18; "Student to"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Student to';
        }

        field(19; Classcode; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Classcode';
        }

        field(20; "Tel.No"; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Tel.No';
        }

        field(21; "Mobile phone no."; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Mobile phone no.';
        }

        field(22; "Trainee Teacher"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Trainee Teacher';
        }

    }

    keys
    {
        key(pk; "No.", "City")
        {
            Clustered = true;
        }
    }
}
