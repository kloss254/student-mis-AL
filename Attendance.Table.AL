table 50104 "Attendance"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Attendance ID"; Code[20]) { }
        field(2; "Student ID"; Code[20]) { TableRelation = "Student"."Student ID"; }
        field(3; "Course ID"; Code[10]) { TableRelation = "Course"."Course ID"; }
        field(4; "Date"; Date) { }
        field(5; "Status"; Option)
        {
            OptionMembers = Present,Absent,Late,Excused;
        }
        field(6; "Remarks"; Text[100]) { }
    }

    keys
    {
        key(PK; "Attendance ID") { Clustered = true; }
    }
}
