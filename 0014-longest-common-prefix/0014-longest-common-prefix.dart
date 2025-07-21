class Solution {
  String longestCommonPrefix(List<String> strs) {
      if (strs.isEmpty) return "";

  // Sort the strings
  strs.sort();

  // Take first and last strings after sort
  String first = strs.first;   // "flight"
  String last = strs.last;     // "flower"

  int i = 0;
  while (i < first.length && i < last.length && first[i] == last[i]) {
    i++;
  }

  return first.substring(0, i);
}
  }
