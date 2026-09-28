page 50112 "Student Ledger Entries"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Student Ledger Table";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.")
                {

                }
                field("Document No."; Rec."Document No.")
                {

                }
                field("Student ID"; Rec."Student ID")
                {

                }
                field("Student Name"; Rec."Student Name")
                {

                }
                field("Course"; Rec."Course")
                {

                }
                field("Posting Date"; Rec."Posting Date")
                {

                }
                field("Posting by"; Rec."Posted by")
                {

                }
                //field("Amount"; Rec."Amount")
                //{

                //}
                field("No. Series"; Rec."No. Series")
                {
                    visible = false;
                }
                //field("CompanyName"; Rec."Company Name")
                //{

                //}
            }
        }
        //area(Factboxes)
        //{

        //}
        //}

        //actions
        //{
        //  area(Processing)
        //{
        //  action(ActionName)
        //{

        //  trigger OnAction()
        //begin

        //end;
        //}
        //}
    }
}