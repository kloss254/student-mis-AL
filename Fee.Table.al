table 50103 "Fee Payment"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Payment ID"; Code[20]) { }
        field(2; "Student ID"; Code[20]) { TableRelation = "Student"."Student ID"; }
        field(3; "Amount Paid"; Decimal) { }
        field(4; "Payment Date"; Date) { }
        field(5; "Description"; Text[100]) { }
    }

    keys
    {
        key(PK; "Payment ID") { Clustered = true; }
    }
}
