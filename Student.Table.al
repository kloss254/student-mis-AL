table 50120 "Student MIS"
{
    DataClassification = CustomerContent; // Keep this as it's a valid top-level classification for the table

    fields
    {
        field(1; "Student ID"; Code[20])
        {
            DataClassification = EndUserIdentifiableInformation; // Changed from CustomerContent (more specific for ID)
        }
        field(2; "Full Name"; Text[100])
        {
            DataClassification = EndUserIdentifiableInformation; // Corrected: PersonName is not valid
        }
        field(3; "Gender"; Option)
        {
            OptionMembers = Male,Female,Other;
            DataClassification = EndUserIdentifiableInformation; // Corrected: PersonSensitiveInfo is not valid
        }
        field(4; "Date of Birth"; Date)
        {
            DataClassification = EndUserIdentifiableInformation; // Changed from CustomerContent (Date of birth is identifiable)
        }
        field(5; "Email"; Text[100])
        {
            DataClassification = EndUserIdentifiableInformation; // Corrected: Contact is not valid
            ExtendedDatatype = Email; // Consider adding this for email fields
        }
        field(6; "Phone"; Text[30])
        {
            DataClassification = EndUserIdentifiableInformation; // Corrected: Contact is not valid
            ExtendedDatatype = PhoneNo; // Consider adding this for phone number fields
        }
    }

    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }
}