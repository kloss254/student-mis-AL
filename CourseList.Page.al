page 50102 "Course List" // Assuming this is the correct Page ID for your Course List page
{
    PageType = List;
    SourceTable = Course; // Corrected: Removed quotes. Assuming your table object is named 'Course'.
                          // If your table object is truly defined as table 50XXX "Course", then the quotes are technically needed,
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
                field("Course ID"; Rec."Course ID")
                {
                    ApplicationArea = All; // Recommended to explicitly set ApplicationArea on fields
                }
                field("Course Name"; Rec."Course Name")
                {
                    ApplicationArea = All;
                }
                field(Credits; Rec.Credits) // Assuming your field in the "Course" table is named "Credits" without spaces.
                                            // If it's "Credits" with spaces, you'd use Rec."Credits"
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}