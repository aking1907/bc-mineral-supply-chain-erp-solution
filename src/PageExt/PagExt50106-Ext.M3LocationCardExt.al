pageextension 50106 "M3 Location Card Ext." extends "Location Card" //5703
{
    layout
    {
        addafter(Name)
        {
            field("Proforma Contract Text"; Rec."Proforma Contract Text")
            {
                MultiLine = true;
                ApplicationArea = all;
            }
        }
    }
}
