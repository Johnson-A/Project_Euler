package problems;

public class p12 {
   static int factorCount(long n) {
      double square = Math.sqrt(n);
      int isquare = (int) square;
      int count = isquare == square ? -1 : 0;
      long candidate;
      for (candidate = 1; candidate <= isquare; candidate++)
         if (0 == n % candidate)
            count += 2;
      return count;
   }

   public static void main(String[] args) {
      for (int i = 0; i < 10; i++) {
         long triangle = 1;
         int index = 1;
         long b = System.nanoTime();
         while (factorCount(triangle) < 501) {
            index++;
            triangle += index;
         }
         long e = System.nanoTime();
         System.out.println((e - b) / 1000000000D);
         System.out.println(triangle);
      }
   }
}
