// Common Elements

// Given:
// let A: Set = [1, 2, 3, 4, 5]
// let B: Set = [3, 4, 5, 6, 7]


// Find common elements.

// Expected output:
// [3, 4, 5]

var num1: Set<Int> = Set((readLine() ?? "").split(separator: " ").compactMap { Int($0) })
var num2: Set<Int> = Set((readLine() ?? "").split(separator: " ").compactMap { Int($0) })
var res = num1.intersection(num2).sorted()
print(res)
