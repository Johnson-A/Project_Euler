package problems;

import java.math.BigDecimal;

public class p80 {
   static int upperBound = 100;

   public static void main(String[] args) {
      for(int i = 1; i <= upperBound; i++){
         BigDecimal f = new BigDecimal(i);
         System.out.println(f);
      }
   }
}
