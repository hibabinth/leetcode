class Solution {
  bool isIsomorphic(String s, String t) {
   if (s.length != t.length) return false;

  List<int> mapS = List.filled(256, 0);
  List<int> mapT = List.filled(256, 0);

  for (int i = 0; i < s.length; i++) {
    int codeS = s.codeUnitAt(i);
    int codeT = t.codeUnitAt(i);

    if (mapS[codeS] != mapT[codeT]) return false;

    mapS[codeS] = i + 1;
    mapT[codeT] = i + 1;
  }

  return true;
}

void main() {
  print(isIsomorphic("egg", "add"));      
  
 
  }
}