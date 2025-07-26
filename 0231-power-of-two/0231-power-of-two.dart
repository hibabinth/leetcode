class Solution {
  bool isPowerOfTwo(int n) {
   if (n < 1) return false;

  while (n % 2 == 0) {
    n ~/= 2;
  }

  return n == 1;
}

void main() {
  print(isPowerOfTwo(1));  
  print(isPowerOfTwo(8));  
  }
}