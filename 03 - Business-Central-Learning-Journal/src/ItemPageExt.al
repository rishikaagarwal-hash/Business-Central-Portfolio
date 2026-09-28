pageextension 50102 ItemPageExt extends "Item Card"
{
    layout
    {
        addlast(content)

        {
            group(MyCustomGroup)
            {

                Caption = 'Container Info';
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
            }
        }
    }
}