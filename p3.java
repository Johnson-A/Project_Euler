package problems;

public class p3 {
   static long num = 1008514751436008514L;

   public static void main(String[] args) {
      Long b = System.nanoTime();
      long a = find(num);
      System.out.println((System.nanoTime() - b) / 1000000);
      System.out.println(a);
   }

   private static long find(long val) {
      long root = (long) Math.sqrt(val);
      for (int i = 2; i <= root; i++) {
         if (val % i == 0) {
            return Math.max(i, find(val / i));
         }
      }
      return val;
   }
}