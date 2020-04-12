// leetcode 167: two sum
// Input: numbers = [2,7,11,15], target = 9
// Output: [1,2]
// Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2 (not zero-based.)

// const twoSum = (nums, target) => {

//   let aPointer = 0;
//   let bPointer = nums.length - 1;

//   while(aPointer <= bPointer) {
//     let sum = nums[aPointer] + nums[bPointer];

//     if(sum > target) {
//       bPointer -= 1;
//     } else if(sum < target) {
//       aPointer += 1;
//     } else {
//       return [aPointer + 1, bPointer + 1];
//     }
//   }
//   return [aPointer + 1, bPointer + 1];
// };


// let numbers = [0, 0, 3, 4];
// let target = 0;
// console.log(twoSum(numbers, target));


const twoSum = (nums, target) => {
  numMap = {};
  for(let i = 0; i < nums.length; i++) {
    if (numMap[target - nums[i]]) {
      return [numMap[target - nums[i]], i];
    }
    numMap[nums[i]] = i;
  }

  throw new Error('No match found!');
};


let numbers = [1, 3, 4, 2];
let target = 6;
console.log(twoSum(numbers, target));