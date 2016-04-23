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
