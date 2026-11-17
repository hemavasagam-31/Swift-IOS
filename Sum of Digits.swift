// Sum of Digits

// Given a number such as 1234, calculate the sum of its digits.

// Expected output:
// Number: 1234
// Sum: 10


// Concept: while loop, %, /.

print("Enter a value:")
var value = Int(readLine() ?? "") ?? 0
var temp = value
var sum = 0

while temp>0{
  sum += temp % 10
  temp/=10
}
print("Number: \(value)")
print("Sum: \(sum)")