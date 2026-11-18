// Even or Odd Checker
// Easy

// Create a function called checkEvenOdd.

// Requirements:
// - Accept one integer.
// - Check whether the number is even or odd.
// - Return a String.
// - Print the result.

func checkEvenOdd(num: Int) -> String{
  if num % 2==0{
    return "Even"
  }else{
    return "Odd"
  }
}

let num = Int(readLine() ?? "") ?? 0
let result = checkEvenOdd(num: num)
print(result)
