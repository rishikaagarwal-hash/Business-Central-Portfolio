pageextension 50144 ILEPageExt extends "Item Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field("Qty per Container"; Rec."Qty per Container") { ApplicationArea = All; }
        }
    }
}