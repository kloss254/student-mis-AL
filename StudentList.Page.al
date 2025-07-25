page 50120 "Student List"
{
    PageType = List;
    SourceTable = Student; // Assuming your table object is named "Student"

    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Student ID"; Rec."Student ID") // Corrected: Added Rec.
                {
                    ApplicationArea = All; // Good practice to include ApplicationArea on fields
                }
                field("Full Name"; Rec."Full Name") // Corrected: Added Rec.
                {
                    ApplicationArea = All;
                }
                field(Gender; Rec.Gender) // Corrected: Added Rec.
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email) // Corrected: Added Rec.
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}