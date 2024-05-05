// Reference: https://www.toptal.com/javascript/functional-programming-javascript

// using pure function
function mirror(z) {
    // check if number is array
    const listNumber = (number) => Array.isArray(number);
    // // copy the list
    const copyList = z.concat();
    // reverse the list number which is the mirror
    const reverseArray = copyList.reverse();
    // mapping each element and do the mirror if element in the array
    const mirrorArray = reverseArray.map(number => listNumber(number) ? mirror(number) : number);
    return mirrorArray;
}

// print the mirror list of number, mirror is: [[6, [5, 4], 3], 2, 1]
console.log(mirror([1, 2, [3, [4, 5], 6]]));  
