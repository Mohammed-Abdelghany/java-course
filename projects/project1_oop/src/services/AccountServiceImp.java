package services;

import models.Account;
import models.EWallet;
import validations.CreateAccountValidation;
import validations.LoginValidation;
public class AccountServiceImp implements AccountServiceInter {
    private EWallet eWallet = new EWallet();
    public boolean createAccount(Account account) {
        var validator = new CreateAccountValidation();
        var errors = validator.validate(account);
        if (!errors.isEmpty()) {
            errors.forEach(error ->
                    System.out.println(error.getField() + ": " + error.getMessage()));
            return false;
        }
        eWallet.addAccount(account);
        return true;
    }
    public boolean login(Account account) {
        LoginValidation validator = new LoginValidation(eWallet);
        var errors = validator.validate(account);

        if (!errors.isEmpty()) {
            errors.forEach(error ->
                    System.out.println(error.getField() + ": " + error.getMessage()));
            return false;
        }
        return true;
    }
    public EWallet getEWallet() {
        return eWallet;
    }
    public Account getAccount(String email) {
        return eWallet.findAccountByUsername(email);
    }
    public boolean deposit(Account account, double money) {
        if (money <= 0) {
            System.out.println("Deposit amount must be greater than zero.");
            return false;
        }
        account.setBalance(account.getBalance() + money);
        System.out.println("Deposited " + money + " to account " + account.getUsername());
        return true;
    }

    public int withDraw(Account account, double money) {
        if (money <= 0) {
            System.out.println("Withdrawal amount must be greater than zero.");
            return -1;
        }
        if (account.getBalance() < money) {
            System.out.println("Insufficient balance for withdrawal.");
            return -2;
        }
        account.setBalance(account.getBalance() - money);
        System.out.println("Withdrew " + money + " from account " + account.getUsername());
        return 0;
    }



}
