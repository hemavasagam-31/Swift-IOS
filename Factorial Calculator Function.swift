// Factorial Calculator
// Medium

// Create a function called factorial.

// Requirements:
// - Accept one integer.
// - Calculate its factorial.
// - Return the result.
// - Print the answer.
// - Handle negative numbers appropriately.
// Example:
// factorial(number: 5)

// // Output: 

func factorial(num: Int) -> Int{
  if num <= 0{
    return -1
  }
  for i in 1...num{
    fact = fact*i
  }
  return fact
}
var fact = 1
let num = Int(readLine() ?? "") ?? 0
let result = factorial(num: num)

if(result == -1){
  print("Not factorial")
}
else{
  print("Factorial: \(result)")
}
