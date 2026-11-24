// Remove Duplicates

// Remove duplicate elements from an array while maintaining the original order. Do not use Set.

// Input:
// [1, 2, 2, 3, 4, 4, 5]


// Expected output:
// [1, 2, 3, 4, 5]


let input: [Int] = (readLine() ?? "").split(separator: " ").compactMap { Int($0) }
var result: [Int] = []

for num in input {
    if !result.contains(num) {
        result.append(num)
    }
}

print(result)
