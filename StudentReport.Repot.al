report 50100 "Student Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Student List';

    // *** CRITICAL ADDITIONS FOR REPORTS ***
    DefaultLayout = RDLC; // Specify the default layout type
    RDLCLayout = './StudentReport.rdlc'; // Point to the RDLC report definition file

    dataset
    {
        // dataitem name "Student" should be a valid AL identifier (no spaces for the dataitem name itself)
        // For the dataitem "Student", ensure your table object is defined as table 50XXX "Student"
        dataitem(StudentData; "Student") // Corrected: Using a single-word identifier for the dataitem
        {
            // Column names (the first part) MUST be valid AL identifiers (no spaces).
            // The second part refers to the actual field in your "Student" table.
            column(StudentID; "Student ID") // Corrected: Identifier 'Student ID' -> StudentID
            {
                IncludeCaption = true; // Optional: Includes the field's caption in the dataset
            }
            column(FullName; "Full Name") // Corrected: Identifier 'Full Name' -> FullName
            {
                IncludeCaption = true;
            }
            column(Email; Email) // Assuming 'Email' is a single word field name in the table
            {
                IncludeCaption = true;
            }
            column(Phone; Phone) // Assuming 'Phone' is a single word field name in the table
            {
                IncludeCaption = true;
            }
            // Add other columns as needed from your Student table:
            // column(Gender; Gender) { IncludeCaption = true; }
            // column(DateOfBirth; "Date of Birth") { IncludeCaption = true; }
        }
    }

    // Reports typically have a request page for user input (filters, options)
    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    // You can add fields here for filtering the report data
                    // Example:
                    // field(StudentFilter; StudentData."Student ID")
                    // {
                    //     ApplicationArea = All;
                    //     Caption = 'Filter by Student ID';
                    // }
                }
            }
        }
    }

    // The 'layout' section as you defined it is NOT where you design the visual report.
    // That's done in an external .rdlc (or .docx) file.
    // So, this entire block should be removed or commented out:
    // layout(Layout)
    // {
    //     data(Student)
    //     {
    //         repeater(StudentInfo)
    //         {
    //             field("Student ID") { }
    //             field("Full Name") { }
    //             field("Email") { }
    //             field("Phone") { }
    //         }
    //     }
    // }
}