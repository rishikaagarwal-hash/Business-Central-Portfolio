table 50111 "Student Ledger Table"
{
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Entry No."; Integer)
        {

            AutoIncrement = true;

        }
        field(2; "Document No."; Code[20])
        {
            DataClassification = SystemMetadata;
        }
        field(3; "No. Series"; Code[20])
        {
            DataClassification = SystemMetadata;
        }

        field(4; "Student ID"; Code[50])
        {
            DataClassification = SystemMetadata;

        }
        field(5; "Student Name"; Text[50])
        {
            DataClassification = SystemMetadata;

        }

        field(6; "Course"; Text[50])
        {
            DataClassification = SystemMetadata;

        }
        field(7; "Posting Date"; Date)
        {
            DataClassification = SystemMetadata;

        }
        field(8; "Posted by"; Code[50])
        {
            DataClassification = SystemMetadata;

        }
        field(9; Amount; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(10; "Company Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(11; Address; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(12; City; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(13; State; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(14; Pin; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(15; Country; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(16; Phone; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(17; Email; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(18; "GST %"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(19; "GST Amount"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(20; "Total Amount"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(21; Description; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(22; Quantity; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(23; Unit_Price; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(24; "Amount_AUD"; Decimal)
        {
            DataClassification = CustomerContent;
        }






    }

    //field(7; "Document No."; Code[20])
    //{
    //  DataClassification = SystemMetadata;
    //}
    //field(8; "No. Series"; Code[20])
    //{
    //   DataClassification = SystemMetadata;
    //}


    //field(9; "Entry Type"; Option)
    //{
    //   OptionMembers = "Posting","Rehearshal";
    //}





    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }


}