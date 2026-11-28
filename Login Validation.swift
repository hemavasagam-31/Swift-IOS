// Login Validation

// Create a function:
// func login(username: String?, password: String?)


// Requirements:
// - Use guard let to check the username.
// - Use guard let to check the password.
// - If either is missing, print an appropriate error.
// - Otherwise, print "Login successful".

func login(username: String?, password: String?) {
    guard let unwrappedUsername = username else {
        print("Error: Username is missing")
        return
    }
    
    guard let unwrappedPassword = password else {
        print("Error: Password is missing")
        return
    }
    
    print("Login successful")
}

login(username: nil, password: "secretPassword")    
login(username: "alex_dev", password: nil)          
login(username: "alex_dev", password: "secretPassword") 