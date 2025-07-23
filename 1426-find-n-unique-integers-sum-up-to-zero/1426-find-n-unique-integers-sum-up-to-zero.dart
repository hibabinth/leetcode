class Solution {
  List<int> sumZero(int n) {
  List<int> result = [];

  for (int i = 1; i <= n ~/ 2; i++) {
    result.add(i);
    result.add(-i);
  }

  if (n % 2 != 0) {
    result.add(0); // Add zero if n is odd
  }

  return result;
}

void main() {
  int n = 5;
  print(sumZero(n)); // Output: e.g., [-1, 1, -2, 2, 0]
}
 
  }
