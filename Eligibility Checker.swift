// A person can enter an event only if they are at least 18 years old and have a valid ID.
// Your task:
// 1. Check whether the person is eligible.
// 2. Print the Boolean result.
// 3. Change age to 16 and test again.
// 4. Change hasID to false and test again.


let age = Int(readLine() ?? "") ?? 0
let hasID = true

let eligible = age >= 18 && hasID
print("Eligible: \(eligible)")
