// description:

// In this kata, you must create a function powers that takes an array, and returns the number of subsets possible to create from that list. In other words, counts the power sets.

// For instance

// powers([1,2,3]) => 8
// ...due to...

// powerSet([1,2,3]) =>
// [[],
//  [1],
//  [2],
//  [3],
//  [1,2],
//  [2,3],
//  [1,3],
//  [1,2,3]]
// Your function should be able to count sets up to the size of 500, so watch out; pretty big numbers occur there!

// For comparison, my Haskell solution can compute the number of sets for an array of length 90 000 in less than a second, so be quick!

// You should treat each array passed as a set of unique values for this kata.

// Examples:

// Inspired by this kata by xcuthulu - refer to it if you're stuck!
// AlgorithmsSetsArraysPermutations
var powers = function(arr){
  return powerSet(arr).length;
};

var powerSet = function(arr){
  result = [];
  //arr = [1,2,3]
  var firstDepth = 0;

  var pushNewItem = function(partial, depth){
    // console.log(subresult);

    if(depth === arr.length ){
    //    // console.log("in if");
    //    // console.log(subresult);
    //    // result.push(subresult);

       console.log(partial);
       result.push(partial)
       return;


    //    console.log(result);
    //    return;
    }else{

    //   // pushNewItem(subresult, depth+1);
    //   // console.log("subresult");
    //   // console.log(subresult);
    //   pushNewItem(subresult, depth + 1);
    //   subresult.push(arr[depth])

      // console.log(partial)
      pushNewItem(partial, depth + 1);
      // console.log(partial)
      pushNewItem(partial + arr[depth], depth + 1);
    }
  }

  pushNewItem("" , firstDepth);

  return result;
}

testArr = [1,2,3];
// testArrShort = [1,2];

// console.log(powerSet(testArr));
console.log(powerSet([1,2, 3]))

// console.log(powers(testArrShort) === 4)
// console.log(powers(testArr) === 8)

