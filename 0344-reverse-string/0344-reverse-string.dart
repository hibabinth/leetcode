class Solution {
  void reverseString(List<String> s) {
   int i = 0;
  int j = s.length - 1;

  while (i < j) {
    // Swap the characters
    String temp = s[i];
    s[i] = s[j];
    s[j] = temp;

    i++;
    j--;
  }
} 
void main() {
  List<String> s = ['h', 'e', 'l', 'l', 'o'];
  reverseString(s);
  print(s); // Output: [o, l, l, e, h]
  }
}