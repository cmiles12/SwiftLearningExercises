import Foundation

	// Creates a lowercase and uppercase alphabet and their counts

let alphaLower = "abcdefghijklmnopqrstuvwxyz"
let alphaUpper = alphaLower.uppercased()
let alphaLowerCount = alphaLower.characters.count
let alphaUpperCount = alphaUpper.characters.count

let input = "Nearly all men can stand adversity, but if you want to test a man's character, give him power."

	// Creates the shift amount, and an empty string to hold both en/de-crypted

var shift = 13
var encrypted = ""
var decrypted = ""
var encrypting = true

repeat {
    let text = encrypting ? input : encrypted // Selects which text to use
    shift = shift == Int.max ? shift - alphaLowerCount : shift // Sets shift
	
		// Goes through each char
	
    for character in text.characters {
        let string = String(character)

        var alpha: String
        var alphaCount: Int
		
			// Chooses if upper/lower
		
        switch string {
        case _ where alphaLower.contains(string):
            alpha = alphaLower
        case _ where alphaUpper.contains(string):
            alpha = alphaUpper
        default:
            encrypting ? encrypted.append(string) : decrypted.append(string)
            continue
        }
		
			// Takes alphabet count
		
        alphaCount = alpha.characters.count
        let found = alpha.range(of: string)!
        var advancedBy: Int
		
        if encrypting { // Pushes forwards shift
            let distance = alphaCount - alpha.distance(from: found.lowerBound, to: alpha.endIndex)
            advancedBy = (distance + shift) % alphaCount
			
        } else { // Pulls backwards shift
            let distance = alpha.characters.distance(from: alpha.startIndex, to: found.lowerBound)
            advancedBy = (distance - shift) % alphaCount
            advancedBy = advancedBy < 0 ? alphaCount - -advancedBy : advancedBy
        }

        let append = alpha.substring(with: alpha.characters.index(alpha.startIndex, offsetBy: advancedBy)..<alpha.characters.index(alpha.startIndex, offsetBy: advancedBy + 1))
        encrypting ? encrypted.append(append) : decrypted.append(append) // Adds on 
    }

    encrypting = !encrypting // Sets back to decrypting, and goes back through using encrypted string as the text
} while decrypted.isEmpty // Cont. once decrypted is done

print("Decrypted: \(decrypted)")
print("Encrypted: \(encrypted)")

let equal = input == decrypted ? "Yes" : "No"

print("Does input == decrypted: \(equal)")


