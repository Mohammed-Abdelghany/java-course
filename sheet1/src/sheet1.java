import java.util.Scanner;
import java.util.Arrays;
public class sheet1 {
    Scanner  scanner=new Scanner(System.in);

    public String getStringScanner(){
            return (scanner.nextLine());
        }
    public Long getLongScanner(){
        Scanner  Scanner=new Scanner(System.in);
        return (Scanner.nextLong());
    }
    public Double getDoubleScanner(){
        Scanner  Scanner=new Scanner(System.in);
        return (Scanner.nextDouble());
    }

/*                 Assign 1                */

    public void printHello() {
            String input = getStringScanner();
            System.out.println("Hello, " + input);
        }
    public void printWords() {
        String input = getStringScanner();
        String[] words = input.split(" ");
    for (String word : words) {
        System.out.println(word);
    }
    }
    public void  Calculator(){
            String num=getStringScanner();
        String[] nums=num.split(" ");
        long num1=Long.parseLong(nums[0]);
        long num2=Long.parseLong(nums[1]);
        System.out.println(num1+" "+"+"+" "+num2+" "+"="+" "+(num1+num2));
        System.out.println(num1+" "+"*"+" "+num2+" "+"="+" "+(num1*num2));
        System.out.println(num1+" "+"-"+" "+num2+" "+"="+" "+(num1-num2));

    }
    public void Difference(){
        String[] words=getStringScanner().split(" ");
        long num1=Long.parseLong(words[0]);
        long num2=Long.parseLong(words[1]);
        long num3=Long.parseLong(words[2]);
        long num4=Long.parseLong(words[3]);
        long sum=(num1*num2)-(num3*num4);
        System.out.println("Difference = "+sum);

    }
    public void CircularArea(){
        String input=getStringScanner();
        double r=Double.parseDouble(input);
        double area=3.141592653*r*r;
        System.out.println(area);
    }
    public void SumDigits(){
        long a=getLongScanner();
        long b=getLongScanner();
        System.out.println(a%10+b%10);
    }
    public void SumToN(){
        long n=getLongScanner();
        long sum = n * (n + 1) / 2;
        System.out.println(sum);
    }
    public void TwoNumbers(){
        double a=getDoubleScanner();
        double b=getDoubleScanner();
        long floor=(long)Math.floor(a/b);
        long ceil=(long)Math.ceil(a/b);
        long round=Math.round(a/b);
        System.out.println("floor "+(long)a+" / "+(long)b+" = "+floor);
        System.out.println("ceil "+(long)a+" / "+(long)b+" = "+ceil);
        System.out.println("round "+(long)a+" / "+(long)b+" = "+round);

    }

/*                 Assign 2                  */

    public  void helloCondition(){
        long a=getLongScanner();
        long b=getLongScanner();
        System.out.println(a>=b?"Yes":"No");

    }
    public  void multiplies(){
        long a=getLongScanner();
        long b=getLongScanner();
        System.out.println(a%b==0||b%a==0?"Multiples":"No Multiples");
    }
    public  void maxAndMin(){
        long a=getLongScanner();
        long b=getLongScanner();
        long c=getLongScanner();
        long max=a;
        long min=a;
        if (b>max)
            max=b;
        if (b<min)
            min=b;
        System.out.println(min+" "+max);
    }
    public void theBrothers(){
        String[] name1=getStringScanner().split( " ");
        String[] name2=getStringScanner().split( " ");
        System.out.println(name1[1].equals(name2[1])?"ARE Brothers":"NOT");
    }
    public  void capitalOrSmall(){
        char x=scanner.next().charAt(0);
        System.out.println(
                Character.isDigit(x) ? "IS DIGIT" :
                        Character.isUpperCase(x) ? "ALPHA\nIS CAPITAL" :
                                Character.isLowerCase(x) ? "ALPHA\nIS SMALL" : ""
        );

    }
    public void capitalToSmall(){
        char ch = scanner.next().charAt(0);
        System.out.println((ch >= 'a' && ch <= 'z') ? Character.toUpperCase(ch) : ch >= 'A' && ch <= 'Z' ? Character.toLowerCase(ch) : "");
    }

}