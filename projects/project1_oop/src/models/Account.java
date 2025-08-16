package models;
public class Account {
    private final String username;
    private String password;
    private double balance;
    private String phoneNumber;
    private Integer age;
    public Account(String username, String password, double balance, String phoneNumber, Integer age) {
        this.username = username;
        this.password = password;
        this.balance = 0;
        this.phoneNumber = phoneNumber;
        this.age = age;

    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getUsername() {
        return username;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }
}
