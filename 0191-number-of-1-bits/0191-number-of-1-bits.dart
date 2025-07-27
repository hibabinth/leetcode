class Solution {
  int hammingWeight(int n) {
    int count = 0;
  while (n != 0) {
    n = n & (n - 1); // Clear the lowest set bit
    count++;
  }
  return count;
}

void main() {
  print(hammingWeight(11));   
  print(hammingWeight(128)); 
  }
}