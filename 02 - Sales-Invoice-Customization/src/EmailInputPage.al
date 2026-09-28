page 50104 EmailInputPage
{
    PageType = StandardDialog;
    SourceTable = EmailInput;
    SourceTableTemporary = true;
    ApplicationArea = All;
    Caption = 'Enter Email ID';


    layout
    {
        area(Content)
        {

            group(General)
            {

                field(EmailAddress; Rec."Email Address")
                {
                    ApplicationArea = All;
                    Editable = true;



                }
            }


        }
    }
    trigger OnOpenPage()
    begin
        Rec.DeleteAll();
        Rec.Init();
        Rec.Insert();
    end;
}