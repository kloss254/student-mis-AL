table 50101 "Course"
{
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Course ID"; Code[10]) { }
        field(2; "Course Name"; Text[100]) { }
        field(3; "Credits"; Integer) { }
    }

    keys
    {
        key(PK; "Course ID") { Clustered = true; }
    }
}
