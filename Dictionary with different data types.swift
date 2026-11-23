// Dictionary with different data types

var marks: [String: Int] = [
    "Maths": 90,
    "Science": 85,
    "English": 80
]

marks.updateValue(95, forKey: "Maths")
print(marks["Maths"] ?? 0)
