codeunit 50136 CLETransferSafe
{
    [EventSubscriber(ObjectType::Table, Database::"Cust. Ledger Entry",
    'OnAfterInsertEvent', '', false, false)]
    local procedure CopyToCLE(var Rec: Record "Cust. Ledger Entry")
    var
        SalesInvLine: Record "Sales Invoice Line";
        TotalQty: Decimal;
    begin
        TotalQty := 0;

        SalesInvLine.SetRange("Document No.", Rec."Document No.");

        if SalesInvLine.FindSet() then
            repeat
                TotalQty += SalesInvLine."Qty per Container";
            until SalesInvLine.Next() = 0;

        Rec."Qty per Container" := TotalQty;

        Rec.Modify();
    end;
}