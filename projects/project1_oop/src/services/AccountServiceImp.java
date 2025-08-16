package services;

import models.Account;
import models.EWallet;
import validations.CreateAccountValidation;
import validations.LoginValidation;
public class AccountServiceImp implements AccountServiceInter {
    private final EWallet ewallet;
    public AccountServiceImp(EWallet ewallet) {
        this.ewallet = ewallet;
    }
    public boolean createAccount(Account account) {
        var validator = new CreateAccountValidation();
        var errors = validator.validate(account);
        if (!errors.isEmpty()) {
            errors.forEach(error ->
                    System.out.println(error.getField() + ": " + error.getMessage()));
            return false;
        }
        ewallet.addAccount(account);
        return true;
    }
    public boolean login(Account account) {
        var validator = new LoginValidation(ewallet);
        var errors = validator.validate(account);

        if (!errors.isEmpty()) {
            errors.forEach(error ->
                    System.out.println(error.getField() + ": " + error.getMessage()));
            return false;
        }
        return true;
    }
}
