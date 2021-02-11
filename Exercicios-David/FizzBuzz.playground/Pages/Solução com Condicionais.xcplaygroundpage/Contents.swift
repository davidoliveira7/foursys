/*:
## Solução do FizzBuzz com Condicionais
 
 A solução mais utilizada para o desafio é utilizando condicionais e, naturalmente, um loop:
 
 */
// Codifique aqui sua solução
//for div in 1...100{
//    if div % 3 == 0{
//        print ("Frizz")
//    }else if div % 5 == 0{
//        print ("Buzz")
//    }else if div % 3 == 0 && div % 5 == 0
//}

//for div in 1...100 {
//    if div % 3 == 0 {
//        print("Frizz, \(div)")
//    }else if div % 5 == 0{
//        print("Buzz, \(div)")
//    }else if div % 3 == 0 && div % 5 == 0{
//        print("FrizzBuzz, \(div)")
//    }
//}

for div in 1...100 {
    if div % 3 == 0 && div % 5 == 0{
        print("FrizzBuzz, \(div)")
    }else if div % 3 == 0{
        print("Frizz, \(div)")
    }else if div % 5 == 0{
        print ("Buzz, \(div)")
    }
}

/*:
[Anterior](@previous)  |  página 2 de 3  |  [Próximo: Solução com Switch](@next)
 */
