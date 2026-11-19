// Accessing individual characters

var text = String(readLine() ?? "")
// var index = text.startIndex
var index = text.index(text.startIndex, offsetBy: 2)
print(text[index])
print(text.first!)
print(text.last!)
print(text.prefix(2))
