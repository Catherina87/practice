/*
LeetCode 283: MOVE ZEROES

Input: [0,1,0,3,12]
Output: [1,3,12,0,0]
* Move in-place!

1. go thru array one by one
2. index variable - to keep track of where we're gonna place a variable if it's not a zero.
3. once we've gone thru the array, placing all the elements in a correct order, 
all we need to do is to fill the rest of the array with zeroes.
*/

const moveZeroes = (nums) => {
  let index = 0; // to keep track of where we're gonna place a variable if it's not a zero.

  for(let i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[index] = nums[i];
      index++;
    }
  }

  for(let i = index; i < nums.length; i++) {
    nums[i] = 0;
  }

  return nums;
}

let nums = [0, 1, 0, 3, 12];
console.log(moveZeroes(nums));