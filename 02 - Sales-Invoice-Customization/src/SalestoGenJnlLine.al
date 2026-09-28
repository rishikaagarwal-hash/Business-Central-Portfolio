codeunit 50146 "SumSalesLinesToGL"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnBeforePostGenJnlLine', '', false, false)]
    local procedure SumLinesAndCopyToJournal(var GenJournalLine: Record "Gen. Journal Line"; Balancing: Boolean)
    var
        SalesInvLine: Record "Sales Invoice Line";
        LineSum: Decimal;
    begin
        LineSum := 0;

        if GenJournalLine."Document No." = '' then
            exit;
        SalesInvLine.SetRange("Document No.", GenJournalLine."Document No.");
        if SalesInvLine.FindSet() then
            repeat
                LineSum += SalesInvLine."Qty per Container";
            until SalesInvLine.Next() = 0;

        GenJournalLine."Qty per Container" := LineSum;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterInitGLEntry', '', false, false)]
    local procedure CopyToGLEntry(var GLEntry: Record "G/L Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        GLEntry."Qty per Container" := GenJournalLine."Qty per Container";
    end;
}