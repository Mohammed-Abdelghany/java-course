package services;

import models.Account;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class AppServiceImpl implements AppServiceInter {
    private Scanner scanner = new Scanner(System.in);
    Account account = null;

    public AppServiceImpl() {
    }

    AccountServiceImp accountService = new AccountServiceImp();

    @Override
    public void startApp() {
        int count = 3;
        while (count>=0) {
        System.out.println("Welcome sir :) ");
        System.out.println("Please Choose ");
        System.out.println("1. Sign Up  2. Login  3. Exit");
        int choice = scanner.nextInt();
            switch (choice) {
                case 1:
                    signUp();
                    break;
                case 2:
                    login();
                    break;
                    case 3:
                    System.out.println("Exiting the application. Goodbye!");
                    System.exit(0);
                default:
                    System.out.println("pls enter a valid choice");
                    if(count==0){
                        System.out.println("You have exceeded the maximum number of attempts. Exiting the application.");
                        System.exit(0);
                    }
                    System.out.println("You have " + (count) + " attempts left");
                    count--;
            }
        }

    }

    public void signUp() {
        Account account = null;
        System.out.println("Welcome to Sign Up");
        do {
            System.out.println("Please Enter Username");
            String username = scanner.next();
            System.out.println("Please Enter Password");
            String password = scanner.next();
            System.out.println("Please Enter Age");
            int age = scanner.nextInt();
            System.out.println("Please Enter Phone Number");
            String phone = scanner.next();
            account = new Account(username, password, phone, age, 0);
        }
        while (!accountService.createAccount(account));
        System.out.println("Account created successfully!");
        System.out.println("Please Login to continue");
        System.out.println("1. Login 2. Exit");
        int choice = scanner.nextInt();
        switch (choice) {
            case 1:
                login();
                break;
            case 2:
                System.out.println("Exiting the application. Goodbye!");
                System.exit(0);
        }


    }

    public void login() {
        System.out.println("Welcome to Login");
        String username = null;
        do {
            System.out.println("Please Enter Username");
             username = scanner.next();
            System.out.println("Please Enter Password");
            String password = scanner.next();
            account = new Account(username, password, null, 0, 0);
        }
        while (!accountService.login(account));
        System.out.println("Login successful!");
        System.out.println("Welcome " + accountService.getAccount(username).getUsername() + "!");
        System.out.println("Your balance is: " + accountService.getAccount(username).getBalance());
        System.out.println("Please choose an option:");
        System.out.println("1. View Balance 2. Deposit 3. Withdraw 4. Transfer 5. Logout");

    }
    public void deposit() {
        boolean flag = false;
        while (!flag) {
        System.out.println("Welcome to Deposit");
        System.out.println("Please Enter Amount to Deposit");
        double amount = scanner.nextDouble();
        if (accountService.deposit(account, amount)) {
            accountService.deposit(account, amount);
            System.out.println("Deposit successful! New balance: " + account.getBalance());
            flag = true;
        } else {
            System.out.println("Deposit failed. Please try again.");
        }
        }

    }
    public void withdraw() {
        boolean flag = false;
        while (!flag) {
        System.out.println("Welcome to Withdraw");
        System.out.println("Please Enter Amount to Withdraw");
        double amount = scanner.nextDouble();
        int result = accountService.withDraw(account, amount);
        if (result == 0) {
            System.out.println("Withdrawal successful! New balance: " + account.getBalance());
            flag = true;
        } else if (result == -1) {
            System.out.println("Withdrawal failed. Amount must be greater than zero.");
        } else if (result == -2) {
            System.out.println("Withdrawal failed. Insufficient balance.");
        }
        }
    }
}