// Simple Calculator

// Given two numbers and an operator (+, -, *, /), perform the correct calculation.

// Example:
// a = 20
// b = 5
// operator = "+"
// Output: 25


// Concept: switch.

print("Enter value for A:")
var a = Int(readLine() ?? "") ?? 0

print("Enter value for B:")
var b = Int(readLine() ?? "") ?? 0

print("Enter a Operator:")
var oper = String(readLine() ?? "")

switch oper {
  case "+":
    print("Result: \(a+b)")
  case "-":
        print("Result: \(a-b)")
  case "*":
      print("Result: \(a*b)")
  case "/":
    if(b != 0){
        print("Result: \(a/b)")
    }else{
      print("Cannot be divide")
    }
  case "%":
    if(b != 0){
        print("Result: \(a%b)")
    }else{
      print("Cannot be divide")
    }
default:
  print("Invalid")
}