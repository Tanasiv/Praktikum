table 50101 "Sales Transactions"
{
    DataClassification = ToBeClassified;
    Caption = 'Bonus Tabelle';

    fields
    {
        field(1; "Line No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Line No.';
        }

        field(10; "Sales Person Code"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Sales Person Code';
            TableRelation = "Salesperson/Purchaser" where("Commission %" = filter(> 0));
        }

        field(11; Type; Enum Type)
        {
            DataClassification = CustomerContent;
            Caption = 'Type';
        }

        field(12; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }

        field(13; "Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Amount';
        }
    }

    keys
    {
        key(pk; "No.", "Amount")
        {
            Clustered = true;
        }
    }

}