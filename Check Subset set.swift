// Check Subset

// Check whether all elements of the first set are present in the second set.

// Input:
// Set([2, 4])
// Set([1, 2, 3, 4, 5])


// Expected output:
// First set is a subset of second set


// Hint: Use isSubset(of:)

let setA = Set(readLine()!.split(separator: " ").map { Int($0)! })
let setB = Set(readLine()!.split(separator: " ").map { Int($0)! })

if setA.isSubset(of: setB) {
    print("First set is a subset of second set")
} else {
    print("First set is not a subset of second set")
}
