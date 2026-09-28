table 50103 EmailInput
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Email Address"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = true;
        }
    }
    keys
    {
        key(PK; "Email Address")
        {
            Clustered = true;
        }
    }

}