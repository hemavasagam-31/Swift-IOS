// Find Maximum Number
// Easy

// Create a function called findMaximum.

// Requirements:
// - Accept three integers.
// - Find the largest number.
// - Return the largest number.
// - Print the result.
// Example:
// findMaximum(a: 25, b: 80, c: 45)

// // Output: 80


// Concepts: Function, multiple parameters, conditions, return.

func findMaximum(num1: Int, num2: Int, num3: Int) -> Int{
  if(num1 >= num2 && num1 >= num3){
    return num1
  }
  else if(num2 >= num1 && num2 >= num3){
    return num2
  }
  else{
    return num3
  }
}

let num1 = Int(readLine() ?? "") ?? 0
let num2 = Int(readLine() ?? "") ?? 0
let num3 = Int(readLine() ?? "") ?? 0
let ln = findMaximum(num1: num1, num2: num2, num3: num3)
print(ln)