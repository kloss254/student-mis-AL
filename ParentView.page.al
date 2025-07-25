page 50109 "Parent Dashboard"
{
    PageType = List;
    SourceTable = Parent; // Corrected: Removed quotes for standard practice.
                          // Assumes your table object is named 'Parent'.

    ApplicationArea = All;
    UsageCategory = Lists; // Valid for a list page.

    layout
    {
        area(content)
        {
            repeater("Parent View") // The name of the repeater group. This can be anything, but "Parent View" is fine.
            {
                // Corrected: All field references must be prefixed with 'Rec.'
                field("Parent ID"; Rec."Parent ID")
                {
                    ApplicationArea = All; // Recommended to explicitly set ApplicationArea on fields
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email) // Assuming 'Email' is a single word field name in the table
                {
                    ApplicationArea = All;
                }
                field(Phone; Rec.Phone) // Assuming 'Phone' is a single word field name in the table
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}