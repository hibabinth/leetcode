class Solution {
  bool isPalindrome(int x) {
    int y=0;
    int xx=x;
    while(x>0){
       int temp=x%10;
       y=y*10+temp;
        x=x~/10;
    }
    return(y==xx);
  }

}