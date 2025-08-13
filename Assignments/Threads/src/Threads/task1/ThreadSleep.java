package Threads.task1;

public class ThreadSleep extends Thread {
    private final int sleepTime;

    public ThreadSleep(int sleepTime){
        this.sleepTime = sleepTime;

    }
    public void printNumbers(){
        for (int i = 1; i <6 ; i++) {
            System.out.println("Number: " + i+ " from thread: " + Thread.currentThread().getName()) ;
            try {
                Thread.sleep(sleepTime);//checkException
            } catch (InterruptedException e) {
                System.out.println("Thread interrupted: " + e.getMessage());
            }

        }
    }
    @Override
    public void run() {
        printNumbers();
    }
}
