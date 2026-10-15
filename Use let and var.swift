// Create a constant named country and a variable named marks. Increase marks by 10 and print both.

let country: String = "India"

print("Enter a mark:")
var mark = Int(readLine() ?? "") ?? 0

mark+=10
print("Country Name: ", country)
print("Mark: \(mark)")
