package datastructure.stackLinkedList;
import datastructure.linkedlist.single.Node;
import datastructure.linkedlist.single.linkedList;
public class StackLinkedList {
    Node top;//last node
   public StackLinkedList(){
        top=null;
    }
    public void push(double value){
        Node newNode=new Node();
        newNode.data=value;
        newNode.next=top;// last element becomes first element
        top = newNode;
    }
    public boolean isEmpty(){
        return top==null;
    }
    public double pop(){
        Node current = top;
        top = top.next;
return current.data;
    }
    public void printStack(){
        Node current = top;
        while (current!=null){
            System.out.println(current.data);
            current = current.next;
        }
    }

}
