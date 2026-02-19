codeunit 50100 MyCodeUnit
{
    trigger OnRun()
    begin
        No := 25;
        YesOrNo := true;
        Description := 'Hallo!';

        Message('The value of %1 is %2', 'No', No);

        if Customer.Get('50100') then
            Message(
                'Kunde %1 hat folgenden Namen %2',
                Customer."No.",
                Customer.Name
            )
        else
            Message('Customer mit No. 50100 nicht gefunden');
    end;

    var
        No: Integer;
        YesOrNo: Boolean;
        Amount: Decimal;
        WhenWasit: Date;
        WhatTime: Time;
        Description: Text[30];
        CodeNo: Code[10];
        Ch: Char;
        Color: Option;
        Customer: Record Customer;
}
