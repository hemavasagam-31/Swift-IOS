// Student Marks Management

// Create a dictionary containing student names and their marks. Find and print the student who scored the highest marks.

// Input:
// ["Arun": 85, "Kumar": 90, "Ravi": 75]


// Expected output:
// Topper: Kumar
// Marks: 90

let students = ["Arun": 85, "Kumar": 90, "Ravi": 75]

if let topper = students.max(by: { $0.value < $1.value }) {
    print("Topper: \(topper.key)")
    print("Marks: \(topper.value)")
}
