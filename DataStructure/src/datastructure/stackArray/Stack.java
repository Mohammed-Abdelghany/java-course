package datastructure.stackArray;

public class Stack {
    private  int[] stack;
    private int top;
    public Stack(int size){
        stack = new int[size];
        top = -1;
    }
    public boolean isEmpty(){
        return top == -1;
    }
    public int getSize(){
        return stack.length;
    }
    public int getTop(){
        return stack[top];
    }
    public int getCount(){
        return top+1;
    }
    public boolean isFull(){
        return top == stack.length-1;
    }
    public void push(int value){
        if (!isFull()){
            top++;
            stack[top] = value;

        }
        else{
            System.out.println("Stack is full");
        }
    }
    public int pop(){
        return stack[top--];
    }
    public void printStack(){
        if (!isEmpty()){
        for (int i = 0; i <= top; i++) {
            System.out.println(stack[i]);
        }
        }
    }

}
