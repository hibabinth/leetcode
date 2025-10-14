class Solution {
  String longestPalindrome(String s) {
      if (s.isEmpty) return "";

  String longest = "";

  for (int i = 0; i < s.length; i++) {
    String odd = expand(s, i, i);

    String even = expand(s, i, i + 1);

    String current = odd.length > even.length ? odd : even;

    if (current.length > longest.length) {
      longest = current;
    }
  }

  return longest;
}

String expand(String s, int left, int right) {
  while (left >= 0 && right < s.length && s[left] == s[right]) {
    left--;
    right++;
  }
  return s.substring(left + 1, right);
}
  }
