page 50103 "Course Card"
{
    PageType = Card;
    SourceTable = Course; // Corrected: Removed quotes unless your table object itself is named "Course" with quotes.
                          // Standard practice is to use the unquoted object name, e.g., Course.

    ApplicationArea = All;
    UsageCategory = Lists; // Corrected: 'Cards' is not a valid UsageCategory.
                           // For a card page, 'Lists' or 'Tasks' are common valid options.

    layout
    {
        area(content)
        {
            group("Course Details")
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