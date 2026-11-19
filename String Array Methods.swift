// Split the input into an array of words

var text: [String] = (readLine() ?? "").split(separator:" ").map(String.init)
print(text)

// Methods

print(text[0])

text.append("Orange")
print(text)

text.append(contentsOf: ["Mango", "Grapes"])
print(text)

text[1] = "Null"
print(text)

text.remove(at: 1)
print(text)

