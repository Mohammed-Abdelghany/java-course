package datastructure.array;

public class Array {
    private final int[] array;
    private final int size;
    private int count;

    public Array(int size) {
        this.size = size;
        this.array = new int[size];
        this.count = 0;
    }

    public boolean isEmpty() {
        return count == 0;
    }

    public boolean isFull() {
        return count == size;
    }

    public void add(int value) {
        if (isFull()) {
            System.out.println("Array is full");
            return;
        }
        array[count++] = value;
        System.out.println("Add value: " + value);
    }

    public void remove(int index) {
        if (isEmpty()) {
            System.out.println("Array is empty");
            return;
        }
        if (!isValidIndex(index)) {
            System.out.println("Invalid index");
            return;
        }

        for (int i = index; i < count - 1; i++) {
            array[i] = array[i + 1];
        }

        array[count - 1] = 0;
        System.out.println("Removed value at index: " + index);
    }

    public void add(int value, int index) {
        if (isFull()) {
            System.out.println("Array is full");
            return;
        }

        if (index < 0 || index > count) {
            System.out.println("Invalid index");
            return;
        }

        for (int i = count - 1; i >= index; i--) {
            array[i + 1] = array[i];
        }

        array[index] = value;
        count++;
        System.out.println("Inserted " + value + " at index " + index);
    }

    public int[] getArray() {
        int[] result = new int[count];
        for (int i = 0; i < count; i++) {
            result[i] = array[i];
        }
        return result;
    }

    public int getSize() {
        return size;
    }

    public int getCount() {
        return count;
    }

    public boolean isValidIndex(int index) {
        return index >= 0 && index < count;
    }
}
