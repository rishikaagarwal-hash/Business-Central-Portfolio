page 50101 "Student List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Student Table";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("ID"; Rec."Student ID")
                {

                }
                field("Name"; Rec."Name")
                {

                }
                field("Course"; Rec."Course")
                {

                }
                field("Marks"; Rec."Marks")
                {

                }
                field("Status"; Rec.Status)
                {

                }
                field("Posted Date"; Rec."Posted Date")
                {

                }
                field("Posted By"; Rec."Posted By")
                {

                }
                field("Address"; Rec.Address)
                {

                }
                field("City"; Rec.City)
                {

                }
                field("State"; Rec.State)
                {

                }
                field("Pin"; Rec.Pin)
                {

                }
                field("Phone"; Rec.Phone)
                {

                }
                field("Email"; Rec.Email)
                {

                }
                field("Country"; Rec.Country)
                {

                }
                field("Fee"; Rec.Fee)
                {

                }

            }
        }

    }

    actions
    {
        area(Processing)
        {
            action("Add Student")
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Message('Add Student Clicked');
                end;
            }
            action("Open Card")
            {
                ApplicationArea = All;
                Caption = 'Open Student Card';
                Image = OpenInNewWindow;
                trigger OnAction()
                var
                    StudentCard: Page "Student Card";
                begin
                    PAGE.Run(50103, Rec);
                end;
            }
        }
        area(reporting)
        {
            action("Print Selected Student")
            {
                ApplicationArea = All;
                Image = Print;

                trigger OnAction()
                var
                    StudentRec: Record "Student Table";

                begin
                    StudentRec := Rec;
                    Report.RunModal(50104, true, true, StudentRec);
                end;
            }
        }

    }

}


