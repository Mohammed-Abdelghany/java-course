package datastructure.linkedlist.single;

public class linkedList {
    public Node head;
    public Node pointer;

    public linkedList(){
        head = null;
        pointer = null;
    }
    public boolean isEmpty(){
        return head == null;
    }

    public void add(double value){
        Node newNode = new Node();
        newNode.data = value;
        newNode.next = null;
        if (isEmpty()){
            head = newNode;
            pointer = head;
        }
        else{
            pointer.next = newNode;
            pointer = newNode;
        }

    }
    public void printList(){
        Node current = head;
        while (current != null){
            System.out.println(current.data);
            current = current.next;
        }

    }
    public void reverseList(){
        Node current = head;
        Node previous = null;
        while (current != null){
       Node next = current.next;
       current.next = previous;
       previous = current;
       current = next;
        }
        head = previous;

    }
}
