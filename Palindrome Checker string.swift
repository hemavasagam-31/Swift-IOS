// Palindrome Checker

// Check whether the given string is a palindrome (reads the same forward and backward).

// Input:
// madam


// Expected output:
// Palindrome

import Foundation

var word = String(readLine() ?? "")
var temp = String(word.reversed())
if word == temp {
  print("Palindrome")
    }
else{
  print("Not a palindrome")
}
