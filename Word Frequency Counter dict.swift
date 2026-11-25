// Word Frequency Counter

// Count how many times each word appears in a sentence using a dictionary.

// Input:
// swift python swift java python swift


// Expected output:
// swift: 3
// python: 2
// java: 1


var counts: [String: Int] = [:]

for word in readLine()!.split(separator: " ") {
    counts[String(word), default: 0] += 1
}

for (word, count) in counts {
    print("\(word): \(count)")
}
