table 50102 "Schülertabelle"
{
    DataClassification = ToBeClassified;
    Caption = 'Student Tabelle';
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

        field(22; "Father Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Father Name';
        }

        field(23; "Father Name 2"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Father Name 2';
        }

        field(24; "Father Addr."; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Father Addr.';
        }

        field(25; "Father Addr. 2"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Father Addr. 2';
        }

        field(26; "Father Postcode"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Father Postcode';
            TableRelation = "Post Code";
            ValidateTableRelation = False;
        }

        field(27; "Father City"; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Father City';
        }

        field(28; "Father Tel. No."; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Father Tel. No.';
        }

        field(29; "Father Mobile phone No."; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Father Mobile phone No.';
        }

        field(30; "Father Tel. No. (Job)"; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Father Tel. No. (Job)';
        }

        field(31; "Mother Name"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Mother Name';
        }

        field(32; "Mother Name 2"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Mother Name 2';
        }

        field(33; "Mother Addr."; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Mother Addr.';
        }

        field(34; "Mother Addr. 2"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Mother Addr. 2';
        }

        field(35; "Mother Postcode"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Mother Postcode';
            TableRelation = "Post Code";
            ValidateTableRelation = False;
        }

        field(36; "Mother City"; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Mother City';
        }

        field(37; "Mother Tel. No."; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Mother Tel. No.';
        }

        field(38; "Mother Mobile phone No."; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Mother Mobile phone No.';
        }

        field(39; "Mother Tel. No. (Job)"; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Mother Tel. No. (Job)';
        }

        field(40; Sex; Enum Sex)
        {
            DataClassification = CustomerContent;
            Caption = 'Sex';
        }

    }

    keys
    {
        key(pk; "No.", "Sex")
        {
            Clustered = true;
        }
    }
}