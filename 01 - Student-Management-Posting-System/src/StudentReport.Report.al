report 50116 "Student Report Invoice"
{

    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Student Report Invoice';

    DefaultLayout = RDLC;
    RDLCLayout = 'StudentReportInvoice.rdl';

    dataset
    {
        dataitem("Student Ledger Table"; "Student Ledger Table")
        {
            column(Document_No_; "Document No.")
            {

            }
            column(Student_Name; "Student Name")
            {

            }
            column(Course; Course)
            {

            }
            column(Address; Address)
            {

            }
            column(City; City)
            {

            }
            column(State; State)
            {

            }
            column(Pin; Pin)
            {

            }
            column(Phone; Phone)
            {

            }
            column(Email; Email)
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Company_Name; CompanyInfo.Name)
            {

            }
            column(CompanyAddress; CompanyInfo.Address)
            {

            }
            column(CompanyCity; CompanyInfo.County)
            {

            }
            column(CompanyAccName; CompanyInfo."Bank Name")
            {

            }
            column(CompanyAccNo; CompanyInfo."Bank Account No.")
            {

            }
            column(CompanyBranchNo; CompanyInfo."Bank Branch No.")
            {

            }
            column(GST_Amount; "GST Amount")
            {

            }
            column(Total_Amount; "Total Amount")
            {

            }
            column(Amount; Amount)
            {

            }
            column(GST__; "GST %")
            {

            }
            column(Description; Description)
            {

            }
            column(Unit_Price; Unit_Price)
            {

            }
            column(Quantity; Quantity)
            {

            }
            column(Amount_AUD; Amount_AUD)
            {

            }



        }
    }

    //requestpage
    //{
    //  AboutTitle = 'Teaching tip title';
    //AboutText = 'Teaching tip content';
    //layout
    //{
    //  area(Content)
    //{
    //  group(GroupName)
    //{
    // field(Name; SourceExpression)
    // {

    // }
    //}
    //}
    //}

    //actions
    //{
    //area(processing)
    //{
    //action(LayoutName)
    //{

    //}
    //}
    //}
    // }
    trigger OnPreReport()
    begin
        CompanyInfo.Get();
    end;


    var
        CompanyInfo: Record "Company Information";

}