pageextension 50104 SalesQuoteExt extends "Sales Quote Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("Item UID"; Rec."Item UID")
            {
                ApplicationArea = All;
            }
            field("Container Quantity"; Rec."Container Quantity")
            {
                ApplicationArea = All;
            }
            field(Ti; Rec.Ti)
            {
                ApplicationArea = All;
            }
            field(Hi; Rec.Hi)
            {
                ApplicationArea = All;
            }
            field("Case Pack"; Rec."Case Pack")
            {
                ApplicationArea = All;
            }
            field(Freight; Rec.Freight)
            {
                ApplicationArea = All;
            }
            field("Qty per Container"; Rec."Qty per Container")
            {
                ApplicationArea = All;
            }
        }
    }
}