// A customer buys 3 notebooks and 2 pens.
// - Notebook price = ₹45.50
// - Pen price = ₹10.00

let notebook: Double = 45.50
let penprice: Double = 10.00

print("Notebook Quantity:")
var nbq = Int(readLine() ?? "") ?? 0

print("Pen Quantity:")
var pq = Int(readLine() ?? "") ?? 0

var nbt = Double(nbq) * notebook
var pt = Double(pq) * penprice
var tot = nbt+pt

print("Notebook Total Price: \(nbt)")
print("Pen Total Price: \(pt)")
print("Total Cost: \(tot)")
