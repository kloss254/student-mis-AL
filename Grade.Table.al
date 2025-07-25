table 50105 "Grade"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Grade ID"; Code[20]) { }
        field(2; "Student ID"; Code[20]) { TableRelation = "Student"."Student ID"; }
        field(3; "Course ID"; Code[10]) { TableRelation = "Course"."Course ID"; }
        field(4; "Exam Type"; Option)
        {
            OptionMembers = CAT1,CAT2,Midterm,Final,Project;
        }
        field(5; "Score"; Decimal) { }
        field(6; "Date"; Date) { }
    }

    keys
    {
        key(PK; "Grade ID") { Clustered = true; }
    }
}
