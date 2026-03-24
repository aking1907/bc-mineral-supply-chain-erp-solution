tableextension 50103 "M3 Item" extends Item //27
{
    fields
    {
        field(50001; "Abbreviation Code"; Text[50])
        {
            Caption = 'Abbreviation Code';
            DataClassification = ToBeClassified;
        }
        field(50002; Size; Text[50])
        {
            Caption = 'Size';
            DataClassification = ToBeClassified;
        }
    }
}
