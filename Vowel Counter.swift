// Vowel Counter

// Given "Hello World", count how many vowels are present.

// Expected output:
// Vowels: 3

var text = String(readLine() ?? "") 
var count = 0
for character in text.lowercased(){
  if "aeiou".contains(character){
    count+=1
  }
}
print("Vowels: \(count)")