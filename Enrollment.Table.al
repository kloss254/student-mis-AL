table 50102 "Enrollment"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Enrollment ID"; Code[20]) { }
        field(2; "Student ID"; Code[20])
        {
            TableRelation = "Student"."Student ID";
        }
        field(3; "Course ID"; Code[10])
        {
            TableRelation = "Course"."Course ID";
        }
        field(4; "Enrollment Date"; Date) { }
    }

    keys
    {
        key(PK; "Enrollment ID") { Clustered = true; }
    }
}
