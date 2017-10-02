function fizzbuzz(arr) {
  for (i=0; i < arr.length; i++) {
    if (arr[i] % 3 === 0 && arr[i] % 5 === 0) {
      console.log("fizzbuzz")
    }
    else if (arr[i] % 5 === 0) {
      console.log("buzz")
    } 
    else if (arr[i] % 3 === 0) {
      console.log("fizz")
    } else {
      console.log(arr[i])
    }
  }
}

var arr = Array.from(Array(100).keys())

return fizzbuzz(arr)