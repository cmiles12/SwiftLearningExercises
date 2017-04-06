import Foundation

let input = "Nearly all men can stand adversity, but if you want to test a man's character, give him power."
let shift = 13

let encrypted = encrypt(text: input, shift: shift)
let decrypted = decrypt(text: encrypted, shift: shift)

print("Decrypted: \(decrypted)")
print("Encrypted: \(encrypted)")

let equal = input == decrypted ? "Yes" : "No"

print("Does input == decrypted: \(equal)")