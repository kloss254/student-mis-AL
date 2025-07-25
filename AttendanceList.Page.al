page 50107 "Attendance List"
{
    PageType = List;
    SourceTable = Attendance; // Corrected: Removed quotes for standard practice.
                              // Assumes your table object is named 'Attendance'.

    ApplicationArea = All;
    UsageCategory = Lists; // Valid for a list page.

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                // Corrected: All field references must be prefixed with 'Rec.'
                field("Attendance ID"; Rec."Attendance ID")
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
                field(Date; Rec.Date) // Assuming 'Date' is a single word field name in the table
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status) // Assuming 'Status' is a single word field name in the table
                {
                    ApplicationArea = All;
                }
                field(Remarks; Rec.Remarks) // Assuming 'Remarks' is a single word field name in the table
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}