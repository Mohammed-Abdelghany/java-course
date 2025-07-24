package oop.assignment1;

public class Waiter extends Employee {
    public Waiter(String name, int age,double salary) {
        super(name,age,"Waiter",salary);
    }
    @Override
    public void work(){
        System.out.println("Waiter "+getName()+" is serving customers");
    }
}
