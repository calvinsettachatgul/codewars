// Description:

// What we want to implement is a filter function, like Array.filter(), also similar to the _.filter() in underscore.js and lodash.js.

// The usage is quite simple, like:

// [1,2,3,4].filter((num)=>{ return num > 3})
// should output [4]
// FundamentalsArrays

Array.prototype.filter = function(condition_filter){
  result = []
  arr = this

  for( var i=0 ; i < arr.length ; i++){
    if(condition_filter(arr[i])){
      result.push( arr[i] );
    }
  }
  return result
}

arr = [1,2,3];

var greater_than_1 = function(num){
  return num > 1;
}

console.log(arr.filter(greater_than_1))


