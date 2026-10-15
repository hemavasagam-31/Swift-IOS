// Set age = 20 and hasID = true. Check whether age is at least 18 AND hasID is true.

print("Enter Age")
var age = Int(readLine() ?? "") ?? 0
var hasID = true

print(age >= 18 && hasID == true)

// if(age >= 18){
//   print(hasID)
// } 
// else {
//   print(!hasID)
// }
