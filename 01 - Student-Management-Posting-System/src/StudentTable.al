table 50100 "Student Table"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Student ID"; Code[10])
        {
            DataClassification = CustomerContent;

        }
        field(2; "Name"; Text[50])
        {
            DataClassification = CustomerContent;

        }
        field(3; "Course"; Text[50])
        {
            DataClassification = CustomerContent;

        }
        field(4; "Marks"; Integer)
        {
            DataClassification = CustomerContent;

        }
        field(5; "Status"; Enum "Student Status")
        {
            DataClassification = SystemMetadata;
        }
        field(6; "Posted Date"; Date)
        {
            DataClassification = SystemMetadata;

        }
        field(7; "Posted By"; Code[50])
        {
            DataClassification = SystemMetadata;
        }
        field(8; Comments; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(9; "Last Modified by"; code[50])
        {
            DataClassification = SystemMetadata;
        }
        field(10; "Last Modified Date"; DateTime)
        {
            DataClassification = SystemMetadata;
        }
        //field(11; Amount; BigInteger)
        //{
        //  DataClassification = CustomerContent;
        //}
        field(12; "Company Name"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(13; Address; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(14; City; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(15; State; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(16; Pin; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(17; Country; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(18; Phone; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(19; Email; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(20; Fee; Integer)
        {
            DataClassification = CustomerContent;
        }


    }

    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }


    trigger OnModify()
    begin
        Rec."Last Modified by" := USERID;
        Rec."Last Modified Date" := CurrentDateTime;
    end;

}