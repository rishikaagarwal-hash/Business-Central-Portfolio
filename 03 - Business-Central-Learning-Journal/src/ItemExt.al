tableextension 50101 ItemExt extends "Item"
{
    fields
    {
        field(50100; "Item UID"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50101; "Container Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50102; "Ti"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50103; "Hi"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50104; "Case Pack"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50105; "Freight"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

    }
}