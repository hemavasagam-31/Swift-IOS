// Age Validation

// Create a function checkAge(age: Int?).
// - Use guard let to unwrap the age.
// - If age is nil, print "Age not provided".
// - Otherwise, print the age.

func checkAge(age: Int?) {
    guard let unwrappedAge = age else {
        print("Age not provided")
        return
    }
    print(unwrappedAge)
}
checkAge(age: nil)
checkAge(age: 25) 