// String methods and properties
import Foundation

var text = String(readLine() ?? "")
print(text.count)
print(text.uppercased())
print(text.lowercased())
print(text.contains("Hello"))
print(text.hasPrefix("Hello"))
print(text.hasSuffix("!"))
print(text.replacingOccurrences(of: "Hello", with: "Vannakkam"))
print(text.isEmpty)
