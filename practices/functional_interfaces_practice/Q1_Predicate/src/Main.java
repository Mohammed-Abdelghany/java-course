import java.util.*;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
//           Legacy code using anonymous class

//        Scanner sc = new Scanner(System.in);
//        System.out.println("Enter a num:");
//        int num = sc.nextInt();
//   1     Predicate<Integer>isEven=new Predicate<Integer>() {
//            @Override
//            public boolean test(Integer integer) {
//                return integer % 2 == 0;
//            }
//        };
//
//               Modern code using lambda expression

//       Predicate<Integer> isEven=(n)->num%2==0;
//        System.out.println(isEven.test(num) ? "Even" : "Odd");
//Scanner scanner = new Scanner(System.in);
//String input = scanner.nextLine();
//           Legacy code using anonymous class

// 2       Function<String,Integer>stringLength=new Function<String, Integer>() {
//            @Override
//            public Integer apply(String s) {
//                return s.length();
//            }
//        };

        // Modern code using lambda expression

//        Function<String,Integer>stringLength=(s)-> s.length();

//        System.out.println(stringLength.apply(input) );

//        Consumer<String>PrintMessage = new Consumer<String>() {
//            @Override
//            public void accept(String s) {
//                System.out.println(s);
//            }
//        };
//        // Modern code using lambda expression
//        Consumer<String> printMessage = System.out::println;

    }
}