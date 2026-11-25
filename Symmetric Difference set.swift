// Symmetric Difference

// Given two sets, find the elements that are present in either set but not in both.

// Input:
// Set([1, 2, 3, 4])
// Set([3, 4, 5, 6])


// Expected output:
// [1, 2, 5, 6]

let setA = Set(readLine()!.split(separator: " ").map { Int($0)! })
let setB = Set(readLine()!.split(separator: " ").map { Int($0)! })

let result = Array(setA.symmetricDifference(setB)).sorted()
print(result)
