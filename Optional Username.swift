// Optional Username

// Create an optional String called username.
// - If a username exists, print it using if let.
// - Otherwise, print "Username not found".
// Expected output (when username is nil):
// Username not found

var username: String? = nil

if let unwrappedUsername = username {
    print(unwrappedUsername)
} else {
    print("Username not found")
}