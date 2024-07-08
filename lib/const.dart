final EMAIL_VALIDATION_REGEX = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");

final PASSWORD_VALIDATION_REGEX =
    RegExp(r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$");

final NAME_VALIDATION_REGEX = RegExp(r"^\s*[\s\S]*\s*$");

final String PLACEHOLDER_PFP =
    "https://img.freepik.com/free-vector/user-circles-set_78370-4704.jpg?w=740&t=st=1720455334~exp=1720455934~hmac=e48216086c0af7a3db323d213615e8b12c04d05acc6b574bb4bea6824bc8b11a";
