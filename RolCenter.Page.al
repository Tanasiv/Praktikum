page 50104 "RolCenter"
{
    PageType = RoleCenter;
    Caption = 'Schule Role Center';
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(RoleCenter)
        {
            part(StudentCue; "SchuleCuePartList")
            {
                ApplicationArea = All;
            }
        }
    }


    actions
    {
        area(Sections)
        {
            group(SchoolMenu)
            {
                action(StudentList)
                {
                    Caption = 'Student List';
                    RunObject = page "Student List";
                    ApplicationArea = All;
                    Image = List;
                }

                action(TeacherList)
                {
                    Caption = 'Teacher List';
                    RunObject = page "Lehrer List";
                    ApplicationArea = All;
                    Image = List;
                }

                action(GradeList)
                {
                    Caption = 'Grade List';
                    RunObject = page "Stufe List";
                    ApplicationArea = All;
                    Image = List;
                }

                action(RoomList)
                {
                    Caption = 'Room List';
                    RunObject = page "Raum List";
                    ApplicationArea = All;
                    Image = List;
                }

                action(SubjectList)
                {
                    Caption = 'Subject List';
                    RunObject = page "Fächer List";
                    ApplicationArea = All;
                    Image = List;
                }
                action(LehrerReports)
                {
                    Caption = 'Lehrer Report';
                    RunObject = report "Lehrer Report";
                    ApplicationArea = All;
                    Image = Report;
                }
                action(StudentReports)
                {
                    Caption = 'Student Report';
                    RunObject = report "Student Report";
                    ApplicationArea = All;
                    Image = Report;
                }
                action(StufeFachReports)
                {
                    Caption = 'Stufe Fach Report';
                    RunObject = report "Stufe Fach Reports";
                    ApplicationArea = All;
                    Image = Report;
                }
            }
        }

        area(Embedding)
        {
            action(StudentsList)
            {
                Caption = 'Students List';
                RunObject = page "Student List";
                                ApplicationArea = All;
                                Image = List;
            }

            action(LehrerList)
            {
                Caption = 'Lehrer List';
                RunObject = page "Lehrer List";
                                ApplicationArea = All;
                                Image = List;
            }

            action(StufeList)
            {
                Caption = 'Stufe List';
                RunObject = page "Stufe List";
                                ApplicationArea = All;
                                Image = List;
            }

            action(RaumList)
            {
                Caption = 'Raum List';
                RunObject = page "Raum List";
                                ApplicationArea = All;
                                Image = List;
            }

            action(FaecherList)
            {
                Caption = 'Fächer List';
                RunObject = page "Fächer List";
                                ApplicationArea = All;
                                Image = List;
            }

            action(StudentReport)
            {
                Caption = 'Student Report';
                RunObject = report 50111;
                                ApplicationArea = All;
                                Image = Print;
            }

            action(LehrerReport)
            {
                Caption = 'Lehrer Report';
                RunObject = report 50110;
                                ApplicationArea = All;
                                Image = Print;
            }
        }
    }
}
