permissionset 50102 "MIS Student"
{
    Assignable = true;
    Permissions =
        tabledata "Student" = R,
        tabledata "Enrollment" = R,
        tabledata "Fee Payment" = R;
}
