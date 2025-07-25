permissionset 50100 "MIS Admin"
{
    Assignable = true;
    Permissions =
        tabledata "Student" = RIMD,
        tabledata "Course" = RIMD,
        tabledata "Enrollment" = RIMD,
        tabledata "Fee Payment" = RIMD;
}
