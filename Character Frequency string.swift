// Strings

import Foundation

var word = String(readLine() ?? "")
var charInput = String(readLine() ?? "")
var count = 0
if let targetChar = charInput.first {
    for char in word {
        if char == targetChar {
            count += 1
        }
    }
    print(count)
}
