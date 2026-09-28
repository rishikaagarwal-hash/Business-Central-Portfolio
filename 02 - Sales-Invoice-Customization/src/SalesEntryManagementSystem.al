table 50105 "Sales Entry"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; EntryNo; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; CustomerName; Text[100])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if Rec.CustomerName = '' then
                    Error('Customer Name cannot be blanked!');
            end;
        }
        field(3; ItemName; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Quantity; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if Rec.Quantity <= 0 then
                    Error('Quantity must be greater than zero!');

                Rec.Amount := Rec.Quantity * Rec.Price;
            end;

        }
        field(5; Price; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if Rec.Price <= 0 then
                    Error('Price must be greater than zero!');
                Rec.Amount := Rec.Quantity * Rec.Price;
            end;
        }
        field(6; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
    }

    keys
    {
        key(PK; EntryNo)
        {
            Clustered = true;
        }
    }
}