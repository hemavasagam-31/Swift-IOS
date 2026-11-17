// Function with multiple parameters
func addition(name: String, age: Int){
  print("Name: \(name)")
  print("Age: \(age)")
}
var name = String(readLine() ?? "")
var age = Int(readLine() ?? "") ?? 0
addition(name: name, age: age)
