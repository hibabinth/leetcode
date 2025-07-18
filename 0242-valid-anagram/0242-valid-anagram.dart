class Solution {
  bool isAnagram(String s, String t) {
List<String> list1 = s.split('')..sort();
  List<String> list2 = t.split('')..sort();

  return list1.join() == list2.join();
  }
}