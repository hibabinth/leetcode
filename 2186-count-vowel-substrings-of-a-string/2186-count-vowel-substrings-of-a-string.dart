class Solution {
  int countVowelSubstrings(String word) {
      int count = 0;
    int n = word.length;

    for (int i = 0; i < n; i++) {
      if (!isVowel(word[i])) continue;

      Set<String> vowels = {};

      for (int j = i; j < n; j++) {
        if (!isVowel(word[j])) break;

        vowels.add(word[j]);

        if (vowels.length == 5) {
          count++;
        }
      }
    }

    return count;
  }

  bool isVowel(String ch) {
    return 'aeiou'.contains(ch);
  }
  }
