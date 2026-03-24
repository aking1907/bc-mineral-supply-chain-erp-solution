tableextension 50106 "M3 Purch. & Pay. Setup" extends "Purchases & Payables Setup" //312
{
    fields
    {
        field(50000; "Proforma Invoice Nos."; Code[20])
        {
            Caption = 'Proforma Invoice Nos.';
            TableRelation = "No. Series";
            DataClassification = ToBeClassified;
        }
    }
}
