// Multiplication Table

// Print the multiplication table of 7 from 1 to 10.

// Expected output:
// 7 x 1 = 7
// 7 x 2 = 14
// ...
// 7 x 10 = 70


// Concept: for loop.

print("Enter a number:")
var number = Int(readLine() ?? "") ?? 0

for i in 1...10{
  print("\(number) X \(i) = \(number*i)")
}