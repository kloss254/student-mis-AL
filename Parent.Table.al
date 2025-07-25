table 50106 "Parent"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Parent ID"; Code[20]) { }
        field(2; "Full Name"; Text[100]) { }
        field(3; "Email"; Text[100]) { }
        field(4; "Phone"; Text[30]) { }
        field(5; "Student ID"; Code[20]) { TableRelation = "Student"."Student ID"; }
    }

    keys
    {
        key(PK; "Parent ID") { Clustered = true; }
    }
}
