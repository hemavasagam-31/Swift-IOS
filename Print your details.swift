// Print your name, age, and favourite programming language on separate lines.

print("Enter name: ")
let name = String(readLine() ?? "")

print("Enter age:")
var age = Int(readLine() ?? "") ?? 0

print("Enter language:")
var lan = String(readLine() ?? "")

print("My name is : \(name)")
print("Age is: \(age)")
print("Favourite language is:\(lan)")
