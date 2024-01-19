import 'dart:math';

class MaximumSubArray {
  int maxSubArray(List<int> nums) {
    int maxSum = nums[0];
    int currentSum = nums[0];

    for (int i = 0; i < nums.length; i++) {
      if (currentSum < 0) currentSum = 0;
      currentSum += nums[i];
      maxSum = max(maxSum, currentSum);
    }

    return maxSum;
  }
}

void main() {
  MaximumSubArray max = MaximumSubArray();
  print(max.maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]));
}
