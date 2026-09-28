codeunit 50143 SalesToItemJnl
{
    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesLine', '', false, false)]
    local procedure CopyFromSalesLineToItemJnlLine(var ItemJnlLine: Record "Item Journal Line";
    SalesLine: Record "Sales Line")
    begin
        ItemJnlLine."Qty per Container" := SalesLine."Qty per Container";
    end;
}