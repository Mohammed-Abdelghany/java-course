package oop.assignment1;

public class Employee extends Person {
    private double salary;
    private  String role;
    public Employee(String name, int age, String role,double salary) {
        super(name,age);
       this.salary=salary;
       this.role=role;
    }
    public void work(){
        System.out.println("I am working as a "+role+" and my salary is "+salary);
    }
    public double getSalary() {
        return salary;
    }
    public void setSalary(double salary) {
        this.salary = salary;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }
}
