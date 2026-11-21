// Find the Largest Number

// Given:
// let numbers = [10, 45, 23, 89, 12]


// Find the largest number.

// Expected output: 89

var num: [Int] = (readLine() ?? "").split(separator: " ").compactMap{ Int($0)}
num.sort()
print(num.last!)