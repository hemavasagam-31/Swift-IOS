// if let – Optional Binding

var name: String? = (readLine() ?? "")

if let actualName = name {
    print("Name: \(actualName)")
} else {
    print("Name is not available")
}