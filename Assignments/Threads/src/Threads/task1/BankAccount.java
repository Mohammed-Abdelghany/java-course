package Threads.task1;

public class BankAccount  {
    private double balance;
    public BankAccount(double balance) {
        this.balance = balance;
    }
    public void deposit(double amount) {
        synchronized (this){
            balance+=amount;
           notify();
        }
    }
    public void withdraw(double amount) {
        synchronized (this){
            while (amount > balance) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    System.out.println("Thread interrupted: " + e.getMessage());
                }
            }
            balance -= amount;

        }
    }
    public double getBalance() {
        synchronized (this){
            return balance;
        }
    }



}
