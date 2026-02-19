table 50112 "Stundetabelle"
{
    DataClassification = CustomerContent;
    Caption = 'Stundetabelle';

    fields
    {
        field(1; Lesson; Integer)
        {
            Caption = 'Lesson';
            MinValue = 0;
        }

        field(10; "Start Time"; Time)
        {
            Caption = 'Start Time';
        }

        field(11; "End Time"; Time)
        {
            Caption = 'End Time';
        }
    }

    keys
    {
        key(pk; Lesson)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        ValidateHours();
    end;

    trigger OnModify()
    begin
        ValidateHours();
    end;

    local procedure ValidateHours()
    var
        StundenRec: Record "Stundetabelle";
    begin
        if "End Time" <= "Start Time" then
            Error('Die Endzeit muss größer als die Startzeit sein.');

        if "Start Time" >= "End Time" then
            Error('Die Startzeit muss kleiner als die Endzeit sein.');

        if StundenRec.Get(Lesson - 1) then
            if "Start Time" < StundenRec."End Time" then
                Error('Die Startzeit darf nicht vor Endzeit der vorherigen Stunde liegen.');

        if StundenRec.Get(Lesson + 1) then
            if "End Time" > StundenRec."Start Time" then
                Error('Die Endzeit darf nicht nach Startzeit der nächsten Stunde liegen.');
    end;
}
