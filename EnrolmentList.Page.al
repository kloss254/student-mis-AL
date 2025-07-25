page 50104 "Enrollment List"
{
    PageType = List;
    SourceTable = Enrollment; // Corrected: Removed quotes. Assuming your table object is named 'Enrollment'.
                              // If your table object is truly defined as table 50XXX "Enrollment", then the quotes are technically needed,
                              // but it's less common for simple names.

    ApplicationArea = All;
    UsageCategory = Lists; // This is a valid UsageCategory for a list page, so no change needed here.

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                // Corrected: All field references must be prefixed with 'Rec.'
                field("Enrollment ID"; Rec."Enrollment ID")
                {
                    ApplicationArea = All; // Recommended to explicitly set ApplicationArea on fields
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field("Course ID"; Rec."Course ID")
                {
                    ApplicationArea = All;
                }
                field("Enrollment Date"; Rec."Enrollment Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}