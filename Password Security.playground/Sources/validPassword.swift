import Foundation

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


public func validPassword(password: String, username: String) -> Bool {
    
    var msgError = String()
    
    // primeira verificação
    if tenMostCommonPasswords.contains(password) {
        msgError += "Sua senha é muito utilizada...tente outra !\n"
        
    }
    if password.count < 16 {
        msgError += "A senha deve ter ao menos 16 caracteres\n"
    }
    // demais verificações
    var numberOfDigits = 0
    var numberOfPunctuationCharacteres = 0
    var numberOfRegularLetters = 0
    
    for character in password {
        if digits.contains(character) {
            numberOfDigits += 1
        } else if punctuation.contains(character) {
            numberOfPunctuationCharacteres += 1
        } else {
            numberOfRegularLetters += 1
        } else if {
            numberOfUpperLetters += 1
        }
            
        }
    }
    if numberOfDigits == 0 {
        msgError += "Senha inválida, deve conter ao menos 1 dígito\n"
    }
    if numberOfRegularLetters == 0 {
        msgError += "Senha invalida, deve conter ao menos 1 caracter\n"
    }
    if  numberOfPunctuationCharacteres == 0 {
        msgError += "Senha deve ter ao menos um caracter de pontuação \(punctuation)\n"
        
        msgError += "Senha criada com sucesso"
    }
        if numberOfRegularLetters == 0 {
        msgError += "A senha deve ter ao menos uma letra minuscula\n"
    }
        if numberOfUpperLetters == 0 {
        msgError += "A senha deve ter ao menos uma letra maiuscula\n"
    if password.contains(username){
        msgError += "A senha náo pode ser igual usuario\n"
    }
    if msgError.isEmpty {
        return true
        
    } else {
        print(msgError)
        return false
    }
}
