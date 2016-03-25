package problems;

import java.util.HashMap;

public class p78 {
   static HashMap<Integer, HashMap<Integer, Integer>> vals;
   static int keep = 3000;

   public static void main(String[] args) {
      vals = new HashMap<Integer, HashMap<Integer, Integer>>(1000);
      Integer curVal = 0;

      while (true) {
         if(curVal % 1000 == 0){
            System.out.println(curVal);
         }
         curVal++;
         vals.put(curVal, new HashMap<Integer, Integer>(curVal / 4));
         vals.get(curVal).put(curVal, findNum(curVal, curVal));
         if (vals.get(curVal).get(curVal) % 100000 == 0) {
            System.out.println(curVal);
            break;
         }
      }
   }

   private static int findNum(int n, int greatest) {
      if (n == 0) {
         return 1;
      }
      if (greatest > 0) {
         Integer stored = vals.get(n).get(greatest);
         if (stored != null) {
            return stored;
         } else {
            int gMult = n / greatest;
            int sum = 0;
            for (; gMult >= 0; gMult--) {
               sum += findNum(n - gMult * greatest, greatest - 1);
            }
            vals.get(n).put(greatest, sum);
            return sum % 1000000;
         }
      }
      return 0;
   }

   private static int findSimple(int n, int greatest) {
      if (n == 0) {
         return 1;
      }
      if (greatest > 0) {
         int gMult = (int) (n / greatest);
         int sum = 0;
         for (; gMult >= 0; gMult--) {
            sum += findSimple(n - gMult * greatest, greatest - 1);
         }
         return sum;
      }
      return 0;
   }
}
