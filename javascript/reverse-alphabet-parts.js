// given non-nil string of alphabets/numbers/punctuation,
// reverse only the alphabet parts
// "ABC" => "CBA"
// "!ab!" => "!ba!"
// "!ab" => "!ba"
// "a!!" => "!!a"
// what's Big O?

function reverseLetters(input) {
  const size = input.length
  let first = 0;
  let last = input.length - 1;

  while (first < last) {
    while (!input.charAt(first).match(/[A-Za-z]/) && first < size - 1) {
      first++;
    }

    while (!input.charAt(last).match(/[A-Za-z]/) && last < size - 1) {
      last--;
    }

    let temp = input.charAt(first);
    input = replaceAt(input, first, input.charAt(last));
    input = replaceAt(input, last, temp);
    // input[first] = input.charAt(last);
    // input[last] = temp;

    first++;
    last--;
  }

  return input;
}

function replaceAt(string, index, replace) {
  return string.substring(0, index) + replace + string.substring(index + 1);
}

console.log(reverseLetters('!!!'));

// console.log(reverseLetters('ABC'));
// console.log(reverseLetters('!ab!'));
// console.log(reverseLetters('!ab'));
// console.log(reverseLetters('a!!'));
