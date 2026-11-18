// Prime Number Checker
// Medium

// Create a function called isPrime.

// Requirements:
// - Accept one integer.
// - Check whether it is a prime number.
// - Return true or false.
// - Print the result.
// Example:
// isPrime(number: 7)

// // Output: true


// Test cases:
// Number	Result
// 2	true
// 7	true
// 10	false
// 13	true
// 1	false

// Concepts: Function, Bool, for loop, conditions, return.

func isPrime(num: Int) -> Bool{
  if (num <= 1){
    return false
  }
  else if (num <= 2){
    return true
  }
  else{
    for i in 2..<num{
      if num % i == 0{
        return false
      }
    }
  }
  return true
}

var num = Int(readLine() ?? "") ?? 0
var result = isPrime(num : num)
if result{
  print("\(num) is Prime number")
}else{
  print("\(num) is Not Prime number")
}