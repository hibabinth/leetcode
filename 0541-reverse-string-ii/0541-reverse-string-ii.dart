class Solution {
  String reverseStr(String s, int k) {
   String result = '';
  for (int i = 0; i < s.length; i += 2 * k) {
    String part1 = s.substring(i, (i + k < s.length) ? i + k : s.length);
    String part2 = (i + k < s.length) ? s.substring(i + k, (i + 2 * k < s.length) ? i + 2 * k : s.length) : '';
    
    result += part1.split('').reversed.join() + part2;
  }
  return result;
}

void main() {
  String s = "abcdefg";
  int k = 2;
  print(reverseStr(s, k)); 
  }
}