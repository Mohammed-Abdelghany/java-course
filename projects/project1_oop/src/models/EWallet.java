package models;
import java.util.ArrayList;
import java.util.List;
public class EWallet {
    private static final String walletName = "EraaSoft EWallet";
    private List<Account> accounts=new ArrayList<>();
    public List<Account> getAccounts() {
        return accounts;
    }
    public void setAccounts(List<Account> accounts) {
        this.accounts = accounts;
    }
    public void addAccount(Account account) {
        accounts.add(account);
    }
    public Account findAccountByUsername(String username) {
     return accounts.stream()
             .filter(account -> account.getUsername().equals(username))
             .findFirst()
             .orElse(null);
    }

}
