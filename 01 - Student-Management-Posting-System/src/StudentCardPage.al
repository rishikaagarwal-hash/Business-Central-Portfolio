page 50103 "Student Card"
{
    PageType = Card;
    SourceTable = "Student Table";
    ApplicationArea = All;



    layout
    {
        area(Content)
        {
            Group(Group)
            {
                Editable = IsEditable;
                field("ID"; rec."Student ID")
                {

                }
                field("Name"; rec."Name")
                {

                }
                field("Course"; rec."Course")
                {

                }
                field("Status"; Rec."Status")
                {
                    Editable = false;
                }
                field("Posted Date"; Rec."Posted Date")
                {
                    Editable = false;
                }
                field("Posted By"; Rec."Posted By")
                {
                    Editable = false;
                }
                field("Comments"; Rec."Comments")
                {
                    Editable = true;
                }
                field("Last Modified by"; Rec."Last Modified by")
                {
                    Editable = false;
                }
                field("Last Modified Date"; Rec."Last Modified Date")
                {
                    Editable = false;
                }

            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Student Ledger Entries")
            {
                ApplicationArea = All;
                Image = Ledger;

                trigger OnAction()
                var
                    StudentLedger: Record "Student Ledger Table";

                begin
                    StudentLedger.SetRange("Student ID", Rec."Student ID");
                    Page.Run(Page::"Student Ledger Entries", StudentLedger);
                end;
            }
            action("Print Selected Student")
            {
                ApplicationArea = All;
                Image = Print;

                trigger OnAction()
                var
                    StudentRec: Record "Student Table";
                //StudentLedgerRec: Record "Student Ledger Table";

                begin
                    StudentRec := Rec;
                    //StudentLedgerRec :=Rec;
                    Report.RunModal(50104, true, true, StudentRec);
                    //Report.RunModal(50116,true,true,StudentLedgerRec);
                end;
            }
            action("Print Invoice for Selected Student")
            {
                ApplicationArea = All;
                Image = Print;

                trigger OnAction()
                var
                    StudentLedgerRec: Record "Student Ledger Table";

                begin
                    StudentLedgerRec.SetRange("Student ID", Rec."Student ID");
                    Report.RunModal(50116, true, true, StudentLedgerRec);
                end;
            }


            action("Post Student")
            {
                ApplicationArea = All;
                Image = Post;
                Enabled = CanPost;



                trigger OnAction()
                var
                    StudentPost: Codeunit "Student Post";
                    ConfirmPost: Boolean;
                    IsPost: Boolean;
                begin
                    ConfirmPost := Confirm('Do you want to post this student?', false);


                    StudentPost.Post(Rec);
                    Message('Student record has been posted and ledger created successfully.');
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        IsEditable := Rec.Status <> Rec.Status::Posted;
        CanPost := Rec.Status <> Rec.Status::Posted;
    end;


    var
        IsEditable: Boolean;
        CanPost: Boolean;

    //StudentLedger: Record "Student Ledger Table";
    //StudentSetup: Record "Student Setup";
    //NextNo: Code[20];
    //NoSeries: Codeunit "No. Series";


}


