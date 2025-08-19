package services;
import models.Account;
public interface AccountServiceInter {
    public boolean createAccount(Account account);
    public boolean login(Account account);


//    boolean deposit(Account account, double money);
//    int withDraw(Account account, double money);
//    int transfer(Account account, String userNameAccountTransfer, double money);
//    Account getAccount(Account account);
}
