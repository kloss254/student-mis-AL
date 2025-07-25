page 50106 "Fee Payment List"
{
    PageType = List;
    SourceTable = "Fee Payment"; // Assuming your table object is named exactly "Fee Payment"
    ApplicationArea = All;
    UsageCategory = Lists; // This is a valid UsageCategory for a list page.

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                // Corrected: All field references must be prefixed with 'Rec.'
                field("Payment ID"; Rec."Payment ID")
                {
                    ApplicationArea = All; // Recommended to explicitly set ApplicationArea on fields
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field("Amount Paid"; Rec."Amount Paid")
                {
                    ApplicationArea = All;
                }
                field("Payment Date"; Rec."Payment Date")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description) // Assuming "Description" is the actual field name in the table
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}