// Remove Duplicates

// Given:
// let numbers = [1, 2, 2, 3, 4, 4, 5]


// Create a new array without duplicates, preserving the original order.

// Expected output:
// [1, 2, 3, 4, 5]

var num: [Int] = (readLine() ?? "").split(separator: " ").compactMap{ Int($0) }
var store: [Int] = []
for i in num {
  if !store.contains(i){
    store.append(i)
  }
}
print(store)
