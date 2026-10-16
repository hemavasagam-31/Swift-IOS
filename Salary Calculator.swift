/* An employee earns a basic salary of ₹25,000. They receive a 10% bonus and spend ₹2,000 on expenses.
Your task:
1. Store the basic salary as Double.
2. Calculate the bonus.
3. Calculate the final salary after adding the bonus and subtracting expenses.
4. Print the bonus and final salary.
*/

let bs: Double = 25000
var b = 25000*0.10
var tots = bs+b
var exp = 2000.0
var fs = tots-exp
print("Bonus: \(b)")
print("Final Salary: \(fs)")