import Threads.task1.BankAccount;
import Threads.task1.GetThreadName;
import Threads.task1.HelloThread;
import Threads.task1.ThreadSleep;


public class Main {
    public static void main(String[] args) {
        // Create and start a thread that prints "Hello from thread"

//        HelloThread thread = new HelloThread();
//        thread.start();
//        GetThreadName threadName = new GetThreadName();
//        threadName.start();

        // Create and start two threads that sleep for different durations

//        ThreadSleep threadSleep = new ThreadSleep(1000);
//        threadSleep.start();
//        threadSleep threadSleep2 = new threadSleep(500);
//        threadSleep2.start();
//        try {
//            threadSleep.join(); // Wait for the first thread to finish
//            threadSleep2.join(); // Wait for the second thread to finish
//        } catch (InterruptedException e) {
//            System.out.println("Main thread interrupted: " + e.getMessage());
//        }
//        System.out.println("All threads have finished execution.");

        BankAccount account = new BankAccount(0);
        Thread thread1 = new Thread(() -> {
            account.withdraw(200.0);
            System.out.println("Thread 1 withdrew 200. New balance: " + account.getBalance());
        });
        Thread thread2 = new Thread(() -> {
            account.deposit(300.0);
            System.out.println("Thread 2 deposited 300. New balance: " + account.getBalance());
        });
        thread1.start();
        thread2.start();
        try {
            thread1.join(); // Wait for thread 1 to finish
            thread2.join(); // Wait for thread 2 to finish
        } catch (InterruptedException e) {
            System.out.println("Main thread interrupted: " + e.getMessage());
        }
        System.out.println("Final account balance: " + account.getBalance());

    }
}