package oop.mainapp;

import oop.assignment1.Chef;
import oop.assignment1.Employee;
import oop.assignment1.Waiter;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Employee> employees = new ArrayList<>();
        employees.add(new Chef("John", 25, 10000));
        employees.add(new Waiter("Mary", 25, 10000));
        employees.add(new Chef("Peter", 25, 10000));
        employees.add(new Waiter("Paul", 25, 10000));
        employees.add(new Chef("Jane", 25, 10000));
        employees.add(new Waiter("Jessica", 25, 10000));
        for(Employee employee:employees){
            employee.introduce();
        employee.work();
        }

    }

}