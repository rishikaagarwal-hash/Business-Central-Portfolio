page 50106 "Sales Entry Management System"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Sales Entry";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(CustomerName; Rec.CustomerName)
                {

                }
                field(ItemName; Rec.ItemName)
                {

                }
                field(Quantity; Rec.Quantity)
                {

                }
                field(Price; Rec.Price)
                {

                }
                field(Amount; Rec.Amount)
                {

                }
            }
        }

    }
}