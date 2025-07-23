class Solution {
  bool isPalindrome(String s) {
    String cleaned = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

  
  String reversed = cleaned.split('').reversed.join('');

  return cleaned == reversed;
}

void main() {
  String input = "amma";
  bool result = isPalindrome(input);
  print(result);   
  }
}