page 50118 "Classe Document"
{
    PageType = Document;
    SourceTable = "Classetabelle";
    ApplicationArea = All;
    Caption = 'Classe Card';
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Class Code"; Rec."Class Code") { }
                field("Grade Code"; Rec."Grade Code") { }
                field("Class Description"; Rec."Class Description") { }
                field("Grade Description"; Rec."Grade Description") { }
                field("Teacher Code"; Rec."Teacher Code") { }
                field("Teacher Name"; Rec."Teacher Name") { }
            }

            part(Lines; "Student Classe List")
            {
                SubPageLink = "Class Code" = field("Class Code");
                ApplicationArea = All;
            }
        }
    }
}
