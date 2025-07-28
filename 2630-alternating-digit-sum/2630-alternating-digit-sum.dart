class Solution {
  int alternateDigitSum(int n) {
      String numStr = n.toString();
    int sum = 0;

    for (int i = 0; i < numStr.length; i++) {
      int digit = int.parse(numStr[i]);

      // Add or subtract based on position
      if (i % 2 == 0) {
        sum += digit; 
      } else {
        sum -= digit; 
      }
    }

    return sum; 
  }
}