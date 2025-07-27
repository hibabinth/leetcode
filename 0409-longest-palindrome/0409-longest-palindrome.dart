class Solution {
  int longestPalindrome(String s) {
  Set<String> charSet = {};
  int length = 0;

  for (var ch in s.split('')) {
    if (charSet.contains(ch)) {
      charSet.remove(ch);
      length += 2; 
    } else {
      charSet.add(ch);
    }
  }

  
  return charSet.isNotEmpty ? length + 1 : length;
}

void main() {
  String s = "abccccdd";
  print(longestPalindrome(s));

 
  }
}