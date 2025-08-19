package services;

import models.Account;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class AppServiceImpl implements AppServiceInter {
    private Scanner scanner = new Scanner(System.in);

    public AppServiceImpl() {
    }

    AccountServiceImp accountService = new AccountServiceImp();

    @Override
    public void startApp() {
        System.out.println("Welcome sir :) ");
        System.out.println("Please Choose ");
        System.out.println("1. Sign Up  2. Login  3. Exit");
        int choice = scanner.nextInt();
        switch (choice) {
            case 1:
                signUp();
                break;
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
        Account account = null;
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
}