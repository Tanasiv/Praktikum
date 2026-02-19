table 50120 "Notentabelle"
{
    DataClassification = CustomerContent;
    Caption = 'Notentabelle';

    fields
    {
        field(1; ClassCode; Code[20])
        {
            Caption = 'Class Code';
            NotBlank = true;
            TableRelation = "Classetabelle";
        }

        field(2; GradeCode; Code[10])
        {
            Caption = 'Grade Code';
            NotBlank = true;
            TableRelation = "StufeFachtabelle";
        }

        field(3; StudentCode; Code[20])
        {
            Caption = 'Student Code';
            NotBlank = true;
            TableRelation = "Schülertabelle";
        }

        field(4; SubjectCode; Code[20])
        {
            Caption = 'Subject Code';
            NotBlank = true;
            TableRelation = "Fächertabelle";
        }

        field(5; HalfYear; Enum "School Certificate Type")
        {
            Caption = 'School Certificate Type';
        }

        field(10; Mark; Integer)
        {
            Caption = 'Mark';
            MinValue = 1;
            MaxValue = 6;
        }
    }

    keys
    {
        key(PK; ClassCode, GradeCode, StudentCode, SubjectCode, HalfYear)
        {
            Clustered = true;
        }
    }
}
