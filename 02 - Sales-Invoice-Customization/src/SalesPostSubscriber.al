codeunit 50130 SalesPostSubscriber
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Invoice Line", 'OnBeforeInsertEvent', '', false, false)]
    local procedure FillCustomFieldsFromSalesLine(var Rec: Record "Sales Invoice Line")
    var
        SalesLine: Record "Sales Line";
    begin

        SalesLine.SetRange("Document No.", Rec."Order No.");
        SalesLine.SetRange("Line No.", Rec."Order Line No.");

        if SalesLine.FindFirst() then begin
            Rec."Item UID" := SalesLine."Item UID";
            Rec."Container Quantity" := SalesLine."Container Quantity";
            Rec.Ti := SalesLine.Ti;
            Rec.Hi := SalesLine.Hi;
            Rec."Case Pack" := SalesLine."Case Pack";
            Rec.Freight := SalesLine.Freight;
            Rec."Qty per Container" := SalesLine."Qty per Container";
        end;
    end;
}