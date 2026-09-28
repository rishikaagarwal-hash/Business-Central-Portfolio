tableextension 50102 SalesLineExt extends "Sales Line"
{
    fields
    {
        field(50110; "Item UID"; Text[50])
        {

        }
        field(50111; "Container Quantity"; Decimal)
        {

        }
        field(50112; Ti; Integer)
        {

        }
        field(50113; Hi; Integer)
        {

        }
        field(50114; "Case Pack"; Text[20])
        {

        }
        field(50115; Freight; Decimal)
        {

        }
        field(50116; "Qty per Container"; Decimal)
        {
            Caption = 'Qty per Container';
            DataClassification = CustomerContent;
        }


    }
    trigger OnAfterInsert()
    begin
        "Qty per Container" := Ti * Hi;
    end;


}