package validations;

import java.util.function.Predicate;
import models.Account;
import errors.ValidationError;
import models.EWallet;
import java.util.ArrayList;
import java.util.List;

public class LoginValidation {
    private Account existingAccount = null;
    private static final Predicate<String> isValidUsername =
            username -> username != null && !username.trim().isEmpty();
    private static final Predicate<String> isValidPassword =
            password -> password != null && !password.trim().isEmpty();
    private final EWallet wallet;
    public LoginValidation(EWallet wallet) {
        this.wallet = wallet;
    }
    public List<ValidationError> validate(Account account) {
        List<ValidationError> errors = new ArrayList<>();
        if (!isValidUsername.test(account.getUsername())) {
            errors.add(new ValidationError("username", "Username cannot be null or empty"));
        }
        if (!isValidPassword.test(account.getPassword())) {
            errors.add(new ValidationError("password", "Password cannot be null or empty"));
        }
        if (errors.isEmpty()) {
            existingAccount = wallet.findAccountByUsername(account.getUsername());
            if (existingAccount == null) {
                errors.add(new ValidationError("account", "Account does not exist"));
            } else if (!existingAccount.getPassword().equals(account.getPassword())) {
                errors.add(new ValidationError("password", "Incorrect password"));
            }
        }
        return errors;
    }
    public Account getExistingAccount() {
        return existingAccount;
    }
}
