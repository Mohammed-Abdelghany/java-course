package Threads.task1;

public class GetThreadName extends Thread {
    @Override
    public void run() {
        // Get the name of the current thread
        System.out.println("Current thread name: " + Thread.currentThread().getName());
    }
}
