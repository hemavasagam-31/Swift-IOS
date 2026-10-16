// Write a program that accepts two whole numbers from the user.
// Your task:
// 1. Ask for the first number using readLine().
// 2. Ask for the second number.
// 3. Convert both inputs to Int.
// 4. Print their sum, difference, product, and remainder.

print("Enter a Value 1:")
var v1=Int(readLine() ?? "") ?? 0

print("Enter a value 2:")
var v2=Int(readLine() ?? "") ?? 0

var s=v1+v2
var di=v1-v2
var m=v1*v2
var d=v1/v2

print("Sum: \(s)")
print("Difference: \(di)")
print("Mul: \(m)")
print("Div: \(d)")