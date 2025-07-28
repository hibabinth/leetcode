class Solution {
  int differenceOfSum(List<int> nums) {
    int elementSum = nums.fold(0, (a, b) => a + b);
    int digitSum = nums.fold(0, (a, b) => a + _sumDigits(b));
    return (elementSum - digitSum).abs();
  }

  int _sumDigits(int n) {
    int sum = 0;
    while (n > 0) {
      sum += n % 10;
      n ~/= 10;
    }
    return sum;
  }
}