/* A student scored 78, 85, and 92 in three subjects.
Your task:
1. Store all marks as Int.
2. Calculate the total and average.
3. Convert the average to Double if needed.
4. Print the total and average to two decimal places.
*/

import Foundation

print("Enter M1:")
var m1=Int(readLine() ?? "") ?? 0

print("Enter M2:")
var m2=Int(readLine() ?? "") ?? 0

print("Enter M3:")
var m3=Int(readLine() ?? "") ?? 0

var tot = m1+m2+m3
var avg = Double(tot)/3.0

print("Total Marks: \(tot)")
print("Average: \(String(format: "%.2f", avg))")