class Solution {
  int addDigits(int num) {
  if (num == 0) return 0;
  return (num % 9 == 0) ? 9 : num % 9;
}

void main() {
  int num = 38;
  print(addDigits(num));  
  }
}