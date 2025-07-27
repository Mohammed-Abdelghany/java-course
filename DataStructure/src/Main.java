import datastructure.array.Array;

public class Main {
    public static void main(String[] args) {
        Array array = new Array(10);
        array.add(1);

        array.remove(0);
        array.add(7);
        System.out.println(array.getCount());
        array.add(8, 0);
        for (int num : array.getArray())
            System.out.println(num);
    }
}
