report 50122 "Value Stock Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'ValueStockReport.rdl';
    Caption = 'Value Stock Report';


    dataset
    {
        dataitem(Item; Item)
        {
            column(No_; "No.")
            {

            }
            column(Description; Description)
            {

            }
            column(OpeningValue; OpeningVal)
            {

            }
            column(NetValue; NetVal)
            {

            }
            column(ClosingValue; OpeningVal + NetVal)
            {

            }

            trigger OnAfterGetRecord()
            var
                VE: Record "Value Entry";

            begin
                OpeningVal := 0;
                NetVal := 0;
                //Opening Stock
                VE.Reset();
                VE.SetRange("Item No.", "No.");
                VE.SetFilter("Posting Date", '<%1', StartDate);
                VE.CalcSums("Cost Amount (Actual)");
                OpeningVal := VE."Cost Amount (Actual)";

                //Movement Stock
                VE.Reset();
                VE.SetRange("Item No.", "No.");
                VE.SetRange("Posting Date", StartDate, EndDate);
                VE.CalcSums("Cost Amount (Actual)");
                NetVal := VE."Cost Amount (Actual)";


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
        OpeningVal: Decimal;
        NetVal: Decimal;
        StartDate: Date;
        EndDate: Date;
}