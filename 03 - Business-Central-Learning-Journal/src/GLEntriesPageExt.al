pageextension 50100 "GLEntriesExt" extends "General Ledger Entries"
{

    layout
    {
        addlast(Control1)
        {
            field("Qty per Container"; Rec."Qty per Container")
            {
                ApplicationArea = All;
            }
        }
    }
}
