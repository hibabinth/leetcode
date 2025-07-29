class Solution {
  bool repeatedSubstringPattern(String s) {
    int len = s.length;

    for (int i = 1; i <= len ~/ 2; i++) {
      String sub = s.substring(0, i);
      if (len % i == 0) {
        String repeated = sub * (len ~/ i);
        if (repeated == s) return true;
      }
    }

    return false;
  }
}
