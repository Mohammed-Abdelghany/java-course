package oop.assignment1;

public class Chef extends Employee{
    public Chef(String name, int age,double salary) {
        super(name,age,"Chef",salary);
    }
    @Override
    public void work(){
        System.out.println("Chef "+getName()+" is preparing dishes");
    }
}
