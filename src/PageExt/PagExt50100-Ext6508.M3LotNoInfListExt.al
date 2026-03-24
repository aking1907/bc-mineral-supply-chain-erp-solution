pageextension 50100 "M3 Lot No. Inf. List Ext." extends "Lot No. Information List" //6508
{
    layout
    {
        addafter(Control1905767507)
        {
            part("Attached Documents"; "M3 Doc. Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                UpdatePropagation = Both;
            }
            part(IncomingDocAttachFactBox; "M3 Incom. Doc. Attach. Factbox")
            {
                ApplicationArea = Basic, Suite;
                ShowFilter = false;
                Caption = 'Incoming Document Files';
                Visible = IsListPageVisible;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    var
        DocAtt: Record "Document Attachment";
    begin
        CurrPage."Attached Documents".Page.SetRecordIDFilter(Rec.RecordId);
        CurrPage.IncomingDocAttachFactBox.Page.SetRecordIDFilter(Rec.RecordId);
        DocAtt.SetRange("Record ID", Rec.RecordId);
        IsListPageVisible := DocAtt.Count > 0;
    end;

    var
        IsListPageVisible: Boolean;
}
