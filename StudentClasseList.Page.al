page 50116 "Student Classe List"
{
    PageType = ListPart;
    SourceTable = "Student Classe Tabelle";
    ApplicationArea = All;
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Student Code"; Rec."Student Code")
                {
                 }
                field(Name; Rec.Name) 
                {
                 }
                field("Name 2"; Rec."Name 2") 
                { 
                }
                field("Missed Lessons without excuse"; Rec."Missed Lessons without excuse") 
                { 
                }
                field("Missed Lessons with excuse"; Rec."Missed Lessons with excuse") 
                { 
                }
                field("Transfer at risk"; Rec."Transfer at risk")
                { 
                }
                field("Class Code"; Rec."Class Code")
                {
                    Visible = false;
                }
            }
        }
    }
}


