pageextension 50101 "M3 Sales Order Ext." extends "Sales Order" //42
{
    layout
    {
        addafter("External Document No.")
        {
            field("Posting No."; Rec."Posting No.")
            {
                ApplicationArea = All;
                Editable = true;
            }
        }
    }
}
