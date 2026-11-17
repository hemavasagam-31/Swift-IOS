// Student Grade Calculator

// Given marks = 82, print the grade:
// - 90–100: A
// - 75–89: B
// - 60–74: C
// - 45–59: D
// - Below 45: Fail
// Concept: if, else if, else.

print("MarK:")
var mark = Int(readLine() ?? "") ?? 0

if (mark>=90 && mark<=100){
  print("Grade: A")
}
else if(mark>=75 && mark<=89){
  print("Grade: B")
}
else if (mark>=60 && mark<=74){
  print("Grade: C")
}
else if(mark>=45 && mark<=59){
  print("Grade: D")
}
else{
  print("Fail")
}
