codeunit 50110 SalesLineSubscriber
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnBeforeCopyFromItem', '', false, false)]
    local procedure OnBeforeCopyFromItem(var SalesLine: Record "Sales Line"; Item: Record Item; var IsHandled: Boolean)

    begin




        SalesLine."Item UID" := Item."Item UID";
        SalesLine."Container Quantity" := Item."Container Quantity";
        SalesLine.Ti := Item.Ti;
        SalesLine.Hi := Item.Hi;
        SalesLine."Case Pack" := Item."Case Pack";
        SalesLine.Freight := Item.Freight;

        SalesLine."Qty per Container" := SalesLine.Ti * SalesLine.Hi;




    end;


}