package validations;

import models.Account;
import errors.ValidationError;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public class CreateAccountValidation {

    private static final Predicate<String> isValidUsernamePredicate =
            username -> username != null && !username.trim().isEmpty() && username.length() >= 3;
    private static final Predicate<String> isValidPasswordPredicate =
            password -> password != null && !password.trim().isEmpty() && password.length() >= 6;
    private static final Predicate<String> isValidPhoneNumberPredicate =
            phoneNumber -> phoneNumber != null && phoneNumber.matches("^(\\+20|20|0)\\d{10}$");
    private static final Predicate<Integer> isValidAgePredicate =
            age -> age != null && age >= 18;

    public List<ValidationError> validate(Account account) {
        List<ValidationError> errors = new ArrayList<>();
        if (!isValidUsernamePredicate.test(account.getUsername())) {
            errors.add(new ValidationError("username",
                    "Username must be at least 3 characters long and not empty."));
        }
        if (!isValidPasswordPredicate.test(account.getPassword())) {
            errors.add(new ValidationError("password",
                    "Password must be at least 6 characters long and not empty."));
        }
        if (!isValidPhoneNumberPredicate.test(account.getPhoneNumber())) {
            errors.add(new ValidationError("phoneNumber",
                    "Phone number must start with +20, 20, or 0 and be followed by 10 digits."));
        }
        if (!isValidAgePredicate.test(account.getAge())) {
            errors.add(new ValidationError("age",
                    "Age must be 18 years or older."));
        }
        return errors;
    }
}
