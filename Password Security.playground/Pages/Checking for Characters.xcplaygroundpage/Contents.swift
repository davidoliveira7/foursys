/*:
## Checking for Characters

 Now that you're eliminating the most common passwords, you can add some more sophisticated checks to your algorithm. A good policy is to disallow plain dictionary words. If you require the user to include nonalphabetic characters, there'll be some amount of randomness even if the password includes dictionary words (such as "apple1984"). You might also require passwords be a minimum length. The longer a password, the longer it takes for a hacker to try all possibilities. For example, there are only 140,608 simple six-letter passwords. In contrast, the number of 16-character passwords generated according to the rules below has an upper bound of over 30 nonillion, or 30 thousand billion billion billion! That's way too many for a hacker to perform an exhaustive search of possible passwords.
 
 Use the following rules:
 
- At least 16 characters
- At least one regular letter
- At least one digit
- At least one punctuation character
 
 The two new arrays below contain the digits and common punctuation characters. Use them in your algorithm.
 */
let tenMostCommonPasswords = [
    "123456",
    "password",
    "12345678",
    "qwerty",
    "12345",
    "123456789",
    "letmein",
    "1234567",
    "football",
    "iloveyou"
]
let digits = "0123456789"
let punctuation = "!@#$%^&*(),.<>;'`~[]{}\\|/?_-+= "
/*:
 Implement your updated algorithm below. Rather than checking the password as a whole, you'll now have to check each of its characters.
 
 Recall that a string is defined as a sequence of characters. Even though `String` and `Array` are different types, they're both sequences—that is, they arrange their elements in a particular order. The `for...in` loop has a special superpower: It works on *any* sequence, not just on arrays.
 
 Armed with this knowledge, you can use a loop to implement the algorithm below. Use the `contains()` method to check each character against the predefined arrays above to see whether they satisfy one of the rules. After checking all the characters in the password, write a final conditional statement to check whether you found at least one of each type of required character.
 
 As a bonus, consider adding more detailed error messages to let the user know exactly which rule they failed to observe.
 */
let password = "Somenteeusei@007"
if securityPassword(password: password) == true {
    print ("Senha Segura")
} else {
    print("Reveja sua Senha")
}



//let password = "password"
//
//func insecurePassword(password: String) -> Bool {
//    if tenMostCommonPasswords.contains (password){
//        return true
//    } else {
//        return false
//    }
//}
//
//let password = "passworddecaracteres"
//var msgError = String ()
//if insecurePassword(password: password) {
//    msgError += "Senha fraca , por favor revise\n"
//}else if password.count < 16 {
//    msgError += "A senha deve conter pelo menos 16 caracteres\n"
//}else {
//    var numberOfDigits = 0
//    var numberOfPunctuationCharacteres = 0
//    let numberOfRegularLetters = 0
//    
//    for character in password {
//        if digits.contains(character) {
//            numberOfDigits += 1
//        }else if punctuation.contains(character) {
//            numberOfPunctuationCharacteres += 1
//        }else {
//            numberOfRegularLetters
//    }
//}
//
//    if numberOfDigits == 0 {
//        msgError += "Senha invalida, tem que ter ao menos 1 digito\n"
//    }
//    if numberOfPunctuationCharacteres == 0{
//        msgError += "Sua senha tem que ter ao menos um caracter especial!"
//    }
//}
//



//let password = "passwordjsgdiusgfds123456$#@!"

// Solução utilizando função - by Willian

//let password = "p@passwordjsgdiusgfds123456"
//validPassword(password: password)

/*:
[Previous](@previous)  |  page 2 of 5  |  [Next: Advanced Rules](@next)
 */
