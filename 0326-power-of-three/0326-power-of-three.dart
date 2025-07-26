class Solution {
  bool isPowerOfThree(int n) {
    if (n < 1) return false;

  while (n % 3 == 0) {
    n = n ~/ 3;
  }

  return n == 1;
}

void main() {
  print(isPowerOfThree(27)); 
  }
}