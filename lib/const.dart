

final EMAIL_VALIDATION_REGEX=
RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");


final PASSWORD_VALIDATION_REGEX = RegExp(r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$");

final NAME_VALIDATION_REGEX = RegExp(r"^[A-Za-z][A-Za-z0-9_]{7,29}$");