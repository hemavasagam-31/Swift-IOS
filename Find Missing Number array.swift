// Find Missing Number

// An array contains numbers from 1 to 6, but one number is missing. Find the missing number.

// Input:
// [1, 2, 3, 5, 6]


// Expected output:
// Missing number: 4

let input: [Int] = (readLine() ?? "").split(separator: " ").compactMap { Int($0) }

for number in 1...(input.count + 1) {
    if !input.contains(number) {
        print("Missing number: \(number)")
    }
}
