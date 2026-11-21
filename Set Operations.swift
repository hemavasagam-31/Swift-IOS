let A: Set = [1, 2, 3, 4]
let B: Set = [3, 4, 5, 6]

// Common elements
print(A.intersection(B))

// All unique elements from both sets
print(A.union(B))

// Elements in A but not B
print(A.subtracting(B))

// Elements belonging to either set, but not both
print(A.symmetricDifference(B))