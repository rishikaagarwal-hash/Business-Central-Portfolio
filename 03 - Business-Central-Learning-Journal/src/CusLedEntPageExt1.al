pageextension 50135 CLEPageExt extends "Customer Ledger Entries"
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