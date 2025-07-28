class Solution {
  String capitalizeTitle(String title) {
     List<String> words = title.split(" ");

    List<String> updatedWords = words.map((word) {
      if (word.length <= 2) {
        return word.toLowerCase();
      } else {
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      }
    }).toList();

    return updatedWords.join(" ");
  }
}