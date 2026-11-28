// Combine Optional Binding and Nil Coalescing

// Create an optional integer called marks.
// - If marks exists, print "Your marks: 90" (depending on the value).
// - If it is nil, use ?? to assign a default value of 0.
// - Print the final marks.

var marks: Int? = 90

if let unwrappedMarks = marks {
    print("Your marks: \(unwrappedMarks)")
}

let finalMarks = marks ?? 0
print("Final marks: \(finalMarks)")

marks = nil
if let unwrappedMarks = marks {
    print("Your marks: \(unwrappedMarks)")
}
let defaultFinalMarks = marks ?? 0
print("Final marks: \(defaultFinalMarks)")