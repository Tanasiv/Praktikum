Page 50102 "Lehrer Card"
{
    PageType = Card;
    SourceTable = "Lehrertabelle";
    Caption = 'Lehrer Card';
    ApplicationArea = All;
    UsageCategory = Documents;
    Editable = true;
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                }

                field(Name; Rec.Name)
                {
                }

                field("Name 2"; Rec."Name 2")
                {
                }

                field(Address; Rec.Address)
                {
                }
                field("Address 2"; Rec."Address 2")
                {
                }

                field(Postcode; Rec.Postcode)
                {
                }

                field(City; Rec.City)
                {
                }

                field("Date of Birth"; Rec."Date of Birth")
                {
                }

                field("Student since"; Rec."Student since")
                {
                }

                field("Student to"; Rec."Student to")
                {
                }

                field(Classcode; Rec.Classcode)
                {
                }

                field("Tel.No"; Rec."Tel.No")
                {
                }

                field("Mobile phone no."; Rec."Mobile phone no.")
                {
                }
                field("Trainee Teacher"; Rec."Trainee Teacher")
                {
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
}