package Threads.task1;

public class HelloThread extends Thread{
    @Override
    public void run() {
        System.out.println("Hello from thread " + Thread.currentThread().getName());
    }
}
