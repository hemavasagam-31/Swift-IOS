// Array
// Split the input into an array of words

var text: [String] = (readLine() ?? "").split(separator:" ").map(String.init)
print(text)

// Split by individual characters
var letter: [String] = (readLine() ?? "").map {String($0)}
print(letter)