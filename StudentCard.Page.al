Page 50100 "Student Card"
{
    PageType = Card;
    SourceTable = "Schülertabelle";
    Caption = 'Student Card';
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

                field(Sex; Rec.Sex)
                {
                }

                group("Dad's Data")
                {
                    field("Father Name"; Rec."Father Name")
                    {
                    }

                    field("Father Name 2"; Rec."Father Name 2")
                    {
                    }

                    field("Father Addr."; Rec."Father Addr.")
                    {
                    }
                    field("Father Addr. 2"; Rec."Father Addr. 2")
                    {
                    }

                    field("Father Postcode"; Rec."Father Postcode")
                    {
                    }

                    field("Father City"; Rec."Father City")
                    {
                    }

                    field("Father Tel. No."; Rec."Father Tel. No.")
                    {
                    }

                    field("Father Mobile phone no."; Rec."Father Mobile phone no.")
                    {
                    }
                    field("Father Tel. No. (Job)"; Rec."Father Tel. No. (Job)")
                    {
                    }

                    group("Mother's Data")
                    {
                        field("Mother Name"; Rec."Mother Name")
                        {
                        }

                        field("Mother Name 2"; Rec."Mother Name 2")
                        {
                        }

                        field("Mother Addr."; Rec."Mother Addr.")
                        {
                        }
                        field("Mother Addr. 2"; Rec."Mother Addr. 2")
                        {
                        }

                        field("Mother Postcode"; Rec."Mother Postcode")
                        {
                        }

                        field("Mother City"; Rec."Mother City")
                        {
                        }

                        field("Mother Tel. No."; Rec."Mother Tel. No.")
                        {
                        }

                        field("Mother Mobile phone no."; Rec."Mother Mobile phone no.")
                        {
                        }
                        field("Mother Tel. No. (Job)"; Rec."Mother Tel. No. (Job)")
                        {
                        }

                    }
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