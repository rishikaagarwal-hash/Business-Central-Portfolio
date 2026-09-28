codeunit 50105 "Custom Email Handler"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Document-Mailing",
    'OnBeforeGetEmailSubject', '', false, false)]
    local procedure OnBeforeGetEmailSubject(
        PostedDocNo: Code[20];
        EmailDocumentName: Text[250];
        ReportUsage: Integer;
        var EmailSubject: Text[250];
        var IsHandled: Boolean)
    begin
        // Apply only for Sales Orders
        if EmailDocumentName = 'Sales Order' then begin
            EmailSubject := 'Rishika Agarwal  - ' +
                'Sales Order ' + PostedDocNo
                ;

            IsHandled := true;

        end;
    end;
}