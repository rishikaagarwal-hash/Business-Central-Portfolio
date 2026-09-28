codeunit 50115 "Student Post"
{
    procedure Post(var Student: Record "Student Table")
    var
        StudentLedger: Record "Student Ledger Table";
        StudentSetup: Record "Student Setup";
        NoSeries: Codeunit "No. Series";
        DocNo: Code[20];
    begin
        // Mandatory checks
        Student.TestField(Name);
        Student.TestField(Course);

        // Get setup (NO parameter)
        if not StudentSetup.Get('SETUP') then
            Error('Student Setup is missing.');

        StudentSetup.TestField("Student Ledger No.");

        // Generate Document No
        DocNo := NoSeries.GetNextNo(
            StudentSetup."Student Ledger No.",
            Today,
            true
        );

        if DocNo = ' ' then
            Error('Document No. not generated. Check No. Series.');

        // Entry No. (manual)
        //StudentLedger.Reset();
        //if StudentLedger.FindLast() then
        //    StudentLedger."Entry No." := StudentLedger."Entry No." + 1
        //else
        //    StudentLedger."Entry No." := 1;

        StudentLedger.Init();
        StudentLedger."Document No." := DocNo;
        StudentLedger."No. Series" := StudentSetup."Student Ledger No.";
        StudentLedger."Student ID" := Student."Student ID";
        StudentLedger."Student Name" := Student.Name;
        StudentLedger.Course := Student.Course;
        StudentLedger.Address := Student.Address;
        StudentLedger.City := Student.City;
        StudentLedger.State := Student.State;
        StudentLedger.Pin := Student.Pin;
        StudentLedger.Phone := Student.Phone;
        StudentLedger.Email := Student.Email;
        StudentLedger.Description := Student.Name;
        StudentLedger.Quantity := 1;
        StudentLedger.Unit_Price := Student.Fee;
        //StudentLedger.Validate(Quantity);
        //StudentLedger.Validate(Unit_Price);
        //."GST %StudentLedger" := 10;
        StudentLedger.Amount := StudentLedger.Quantity * StudentLedger.Unit_Price;
        StudentLedger."GST %" := 10;
        StudentLedger."GST Amount" := Round(StudentLedger.Amount * StudentLedger."GST %" / 100, 0.01);
        StudentLedger."Amount_AUD" := StudentLedger.Amount + StudentLedger."GST Amount";
        StudentLedger."Total Amount" := StudentLedger.Amount + StudentLedger."GST Amount";
        StudentLedger."Posting Date" := Today;
        StudentLedger."Posted By" := UserId();

        StudentLedger.Insert(true);

        // Update student
        Student.Status := Student.Status::Posted;
        Student."Posted Date" := Today;
        Student."Posted By" := UserId();
        Student.Modify(true);
    end;
}