class Solution {
  String findTheDifference(String s, String t) {
  int sumS = 0;
  int sumT = 0;

  for (int i = 0; i < s.length; i++) {
    sumS += s.codeUnitAt(i); // ASCII of characters in s
  }

  for (int i = 0; i < t.length; i++) {
    sumT += t.codeUnitAt(i); // ASCII of characters in t
  }

  return String.fromCharCode(sumT - sumS); // Return the added character
}

void main() {
  String s = "abcd";
  String t = "abcde";

  print(findTheDifference(s, t)); // Output: e
}

  }
