pageextension 50149 "PosSalInvPagExt" extends "Posted Sales Invoice"
{
    //add button on posted sales invoice to send email with invoice as attachment
    actions
    {
        addlast(Processing)
        {
            action(sendInvoiceEmail)
            {
                ApplicationArea = All;
                Caption = 'Send Invoice Email';
                Image = Email;
                trigger OnAction()
                begin
                    SendInvoiceMail(Rec);
                end;
            }
        }
    }
    //craeting email procedure to send email with invoice as attachment
    local procedure SendInvoiceMail(SalesInvHeader: Record "Sales Invoice Header")
    var
        EmailMessage: Codeunit "Email Message";
        Email: Codeunit "Email";
        TempBlob: Codeunit "Temp Blob";
        OutStream: OutStream;
        InStream: InStream;
        EmailId: Text;
        Customer: Record Customer;
        FilteredSalesInvHeader: Record "Sales Invoice Header";
        EmailInputRec: Record EmailInput temporary;
        EmailInputPage: Page EmailInputPage;
    begin
        //ask user for email id to send the invoice
        //initialize popup record and run page

        EmailInputRec.DeleteAll();
        EmailInputRec.Init();
        EmailInputRec.Insert();
        Clear(EmailInputPage);
        //pass record to page
        EmailInputPage.SetTableView(EmailInputRec);

        //EmailInputPage.Editable(true);
        //EmailInputPage.LookupMode(true);
        //open editable popup
        if EmailInputPage.RunModal() = Action::OK then begin
            //get updated email
            EmailInputPage.GetRecord(EmailInputRec);
            EmailId := EmailInputRec."Email Address";
            //customer email validation
            if Customer.Get(SalesInvHeader."Sell-to Customer No.") then begin

                if Customer."E-Mail" = '' then
                    Error('Customer  %1 does not have an email address configured.'
                        , Customer."Name");

            end;
            if EmailId = '' then
                Error('Email ID cannot be empty. Please enter a valid email address.');
            FilteredSalesInvHeader.Reset();
            FilteredSalesInvHeader.SetRange("No.", SalesInvHeader."No.");
            if not FilteredSalesInvHeader.FindFirst() then
                Error('Sales Invoice not found.');
            TempBlob.CreateOutStream(OutStream);
            Report.SaveAs(
                Report::"Standard Sales - Invoice", '',
                ReportFormat::PDF,
                OutStream,
                FilteredSalesInvHeader
            );
            //convert output to instream
            TempBlob.CreateInStream(InStream);
            //create email message and attach pdf 
            //dynamic email message subject with sales invoice number and company name
            //Improve email body with proper formatting and details
            EmailMessage.Create(EmailId, 'Sales Invoice' + SalesInvHeader."No." + 'from Vanguard Safety',
            'Dear' + ' ' + Customer.Name + ',' +
            '<br><br>' + 'Please find attached invoice No. ' + SalesInvHeader."No." + '.' +
             '<br><br>' +
             'Thank you for your business!' +
             '<br><br>' +
             'Best regards,' + '<br>' + 'Vanguard Safety Team'
            , true);
            EmailMessage.AddAttachment('Invoice.pdf', 'application/pdf', InStream);
            //send email and success message
            if Email.Send(EmailMessage) then
                Message('Email Sent Successfully ')
            else
                Error('Failed to send email.');
        end;
    end;
}





