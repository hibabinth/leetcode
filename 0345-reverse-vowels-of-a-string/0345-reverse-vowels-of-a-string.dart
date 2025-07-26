class Solution {
  String reverseVowels(String s) {
  List<String> letters = s.split('');
  List<String> vowels = ['a','e','i','o','u','A','E','I','O','U'];

  int start = 0;
  int end = letters.length - 1;

  while (start < end) {
    if (!vowels.contains(letters[start])) {
      start++;
      continue;
    }
    if (!vowels.contains(letters[end])) {
      end--;
      continue;
    }

    // Swap vowels
    String temp = letters[start];
    letters[start] = letters[end];
    letters[end] = temp;

    start++;
    end--;
  }

  return letters.join();
}

void main() {
  String input = "IceCreAm";
  print(reverseVowels(input)); // Output: AceCreIm

  
  }
}