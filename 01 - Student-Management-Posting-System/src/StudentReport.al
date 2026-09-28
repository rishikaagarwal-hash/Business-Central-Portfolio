report 50104 "Student Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Student Report';

    DefaultLayout = RDLC;
    RDLCLayout = 'StudentReport.rdl';
    dataset
    {
        dataitem(Student; "Student Table")
        {
            RequestFilterFields = Course;
            column(Student_ID; "Student ID")
            {

            }
            column(Name; Name)
            {

            }
            column(Course; Course)
            {

            }
            column(Marks; Marks)
            {

            }
            column(TotalStudents; TotalStudents)
            {

            }

            trigger OnAfterGetRecord()
            begin
                TotalStudents += 1;
            end;
        }

    }
    trigger OnPreReport()
    begin
        TotalStudents := 0;
    end;

    var
        TotalStudents: Integer;
}





