table 50113 "Student Setup"
{
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Primary Key"; Code[50])
        {
            DataClassification = SystemMetadata;

        }
        field(10; "Student Ledger No."; Code[50])
        {

            DataClassification = SystemMetadata;

        }

    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }




}