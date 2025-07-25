permissionset 50101 "MIS Teacher"
{
    Assignable = true;
    Permissions =
        tabledata "Student" = R,
        tabledata "Enrollment" = RIM,
        tabledata "Course" = R;
}
