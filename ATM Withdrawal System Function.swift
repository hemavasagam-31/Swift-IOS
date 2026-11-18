// ATM Withdrawal System
// Challenge

// Create a function called withdrawMoney.

// Requirements:
// - Accept account balance and withdrawal amount.
// - Check whether the withdrawal amount is positive.
// - Check whether sufficient balance is available.
// - If valid, return the remaining balance.
// - Otherwise, return an appropriate error message.
// Example:
// withdrawMoney(balance: 10000, amount: 3000)

// // Output: Remaining balance: 7000


// Additional test cases:
// Balance	Withdrawal	Expected
// 10000	3000	7000
// 5000	6000	Insufficient balance
// 5000	0	Invalid amount
// 5000	-500	Invalid amount

// Concepts: Functions, multiple parameters, if-else, optional return values.



func withdrawMoney(bal: Int, wd: Int) -> String {
    if wd <= 0 {
        return "Invalid amount"
    }
    else if bal >= wd {
        return "Remaining balance: \(bal - wd)"
    }
    else {
        return "Insufficient balance"
    }
}

let wd = Int(readLine() ?? "") ?? 0
let result = withdrawMoney(bal: 10000, wd: wd)

print(result)
