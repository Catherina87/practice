// filter method

const nums = [12, 5, 8, 130, 44]

let filtered = nums.filter((num) => {
  if (num >= 10) {
    return true;
  } else {
    return false;
  }
})

console.log(filtered);

// find all prime numbers in array
// A prime number is a whole number greater than 1 that can be divided only by 1 and itself.
let array = [4, 6, 8, 9, 12, 53, -17, 2, 5, 7, 31, 97, -1, 17];

const isPrime = (num) => {
  if (num <= 1) {
    return false;
  } else if (num === 2) {
    return true;
  } else {
    for(let i = 2; i < num; i++) {
      if (num % i === 0) return false;
    }
    return true;
  }
}

let primes = array.filter(isPrime);
console.log(primes);


// Leetcode 1002: find common characters
// Input: ["bella","label","roller"]
// Output: ["e","l","l"]
const commonChars = (array) => {
  let common = array[0].split('').filter((char) => {
    for(let i = 1; i < array.length; i++) {
      if (!array[i].includes(char)) return false;
      else {
        array[i] = array[i].replace(char, '');
      }
    }
    return true;
  })
  return common
};

array = ["bella","label","roller"];
console.log(commonChars(array));