report 50121 "Item Stock Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'ItemStockReport.rdl';
    Caption = 'Item Stock Report';


    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = sorting("Item Category Code");

            RequestFilterFields = "Item Category Code", "No.";
            column(Item_Category_Code; "Item Category Code")
            {

            }
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            column(OpeningStock; OpeningQty)
            {

            }
            column(NetMovement; MovementQty)
            {

            }
            column(ClosingStock; OpeningQty + MovementQty)
            {

            }

            trigger OnAfterGetRecord()
            var
                ILE: Record "Item Ledger Entry";

            begin
                OpeningQty := 0;
                MovementQty := 0;
                //Opening Stock
                ILE.Reset();
                ILE.SetRange("Item No.", "No.");
                ILE.SetFilter("Posting Date", '<%1', StartDate);
                ILE.CalcSums(Quantity);
                OpeningQty := ILE.Quantity;

                //Movement Stock
                ILE.Reset();
                ILE.SetRange("Item No.", "No.");
                ILE.SetRange("Posting Date", StartDate, EndDate);
                ILE.CalcSums(Quantity);
                MovementQty := ILE.Quantity;


            end;
        }
    }

    requestpage
    {

        layout
        {
            area(Content)
            {
                group(Filter)
                {
                    field(StartDate; StartDate)
                    {
                        ApplicationArea = All;
                        Caption = 'Start Date';

                    }
                    field(EndDate; EndDate)
                    {
                        ApplicationArea = All;
                        Caption = 'End Date';
                    }
                }
            }
        }


    }



    var
        OpeningQty: Decimal;
        MovementQty: Decimal;
        StartDate: Date;
        EndDate: Date;
}