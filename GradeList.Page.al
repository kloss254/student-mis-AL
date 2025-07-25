page 50108 "Grade List"
{
    PageType = List;
    SourceTable = Grade; // Corrected: Removed quotes. Assumes table object is named 'Grade'.

    ApplicationArea = All;
    UsageCategory = Lists; // Valid for a list page.

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                // Corrected: All field references now use 'Rec.'
                field("Grade ID"; Rec."Grade ID")
                {
                    ApplicationArea = All; // Good practice
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field("Course ID"; Rec."Course ID")
                {
                    ApplicationArea = All;
                }
                field("Exam Type"; Rec."Exam Type")
                {
                    ApplicationArea = All;
                }
                field(Score; Rec.Score) // Assuming 'Score' is a single word field name in the table
                {
                    ApplicationArea = All;
                }
                field(Date; Rec.Date) // Assuming 'Date' is a single word field name in the table
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}