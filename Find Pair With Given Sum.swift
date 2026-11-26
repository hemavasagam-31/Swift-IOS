// Find Pair With Given Sum

// Find all pairs of numbers whose sum equals the given target.

// Input:
// Array: [2, 4, 3, 5, 7, 8, 1]
// Target: 9


// Expected output:
// (2, 7)
// (4, 5)
// (8, 1)

print("Enter numbers separated by spaces
let numbers = (readLine() ?? "").split(separator: " ").compactMap { Int($0) }

print("Enter the target sum:")
let target = Int(readLine() ?? "") ?? 0

for i in 0..<numbers.count {
    for j in (i + 1)..<numbers.count {
        if numbers[i] + numbers[j] == target {
            print("(\(numbers[i]), \(numbers[j]))", terminator: " ")
        }
    }
}
