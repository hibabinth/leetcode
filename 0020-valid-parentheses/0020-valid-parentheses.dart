class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    
    Map<String, String> pairs = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    for (int i = 0; i < s.length; i++) {
      String char = s[i];

      // If it's a closing bracket
      if (pairs.containsKey(char)) {
        if (stack.isEmpty || stack.last != pairs[char]) {
          return false;
        }
        stack.removeLast(); 
      } else {
        stack.add(char);
      }
    }

    return stack.isEmpty;
  }
}
