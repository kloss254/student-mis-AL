table 50100 "Student"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Student ID"; Code[20]) { DataClassification = EndUserIdentifiableInformation; }
        field(2; "Full Name"; Text[100]) { DataClassification = EndUserIdentifiableInformation; }
        field(3; "Gender"; Option)
        {
            OptionMembers = Male,Female,Other;
            DataClassification = EndUserIdentifiableInformation;
        }
        field(4; "Date of Birth"; Date) { DataClassification = EndUserIdentifiableInformation; }
        field(5; "Email"; Text[100])
        {
            DataClassification = EndUserIdentifiableInformation;
            ExtendedDatatype = Email; // Corrected: Changed E_Mail to Email
        }
        field(6; "Phone"; Text[30])
        {
            DataClassification = EndUserIdentifiableInformation;
            ExtendedDatatype = PhoneNo; // Already correct, but good to keep consistent
        }
    }

    keys
    {
        key(PK; "Student ID") { Clustered = true; }
    }
}