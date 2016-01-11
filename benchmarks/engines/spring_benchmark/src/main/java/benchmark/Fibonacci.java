package fibonacci;

import java.math.BigInteger;

public class Fibonacci{
    private final long value;
    private final String content;

    public Fibonacci(String value, String content){
        
        long n = Long.valueOf(value);
        this.value = n;

        BigInteger answer = this.iterative(n);
        this.content = answer.toString();
    }

    public long getValue(){
        return value;
    }

    public String getContent(){
        return content;
    }

    public static BigInteger iterative(long n){
        if(n < 2){
            return BigInteger.valueOf(n);
        }
        BigInteger ans = BigInteger.valueOf(0);
        BigInteger n1 = BigInteger.valueOf(0);
        BigInteger n2 = BigInteger.valueOf(1);
        for(n--; n > 0; n--){
            ans = n1.add(n2);
            n1 = n2;
            n2 = ans;
        }
        return ans;
    }
}