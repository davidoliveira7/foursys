/*:
## Enums
 
 Em nossas aulas vimos que os *enums* podem ser muito úteis para representar conjuntos finitos de dados, tornando o código conciso e limpo. Iremos colocar esse conceito em prática neste exercício.
 */
//:  - callout(Exercício): Um desenvolvedor construiu o algoritmo abaixo, visando descobrir o signo do zodíaco de uma pessoa a partir da data de nascimento. Ele, porém, talvez por não conhecer o tipo *enumeration* da linguagem Swift, utilizou literais de string para representar os meses e os signos, visto que esses tipos de dados caberiam muito bem numa enumeração. O seu papel será criar uma nova versão deste código utilizando *enum* para representar os meses e os signos. Atenção: os resultados devem ser os mesmos da versão original.

/*
    Tabela de emojis de signos
    
    ♒️ - Aquário
    ♉️ - Touro
    ♈️ - Áries
    ♍️ - Virgem
    ♎️ - Libra
    ♑️ - Capricórnio
    ♋️ - Câncer
    ♐️ - Sagitário
    ♌️ - Leão
    ♏️ - Escorpião
    ♊️ - Gêmeos
    ♓️ - Peixes
 
 

// Código-fonte original
let day = 14
let month = "novembro"
var sign = String()

if month == "dezembro" {
    if day < 22 { sign = "♐️" } else { sign = "♑️" }
} else if month == "janeiro" {
    if day < 20 { sign = "♑️" } else { sign = "♒️" }
} else if month == "fevereiro" {
    if day < 19 { sign = "♒️" } else { sign = "♓️" }
} else if month == "março" {
    if day < 21 { sign = "♓️" } else { sign = "♈️" }
} else if month == "abril" {
    if day < 20 { sign = "♈️" } else { sign = "♉️" }
} else if month == "maio" {
    if day < 21 { sign = "♉️" } else { sign = "♊️" }
} else if month == "junho" {
    if day < 21 { sign = "♊️" } else { sign = "♋️" }
} else if month == "julho" {
    if day < 23 { sign = "♋️" } else { sign = "♌️" }
} else if month == "agosto" {
    if day < 23 { sign = "♌️" } else { sign = "♍️" }
} else if month == "setembro" {
    if day < 23 { sign = "♍️" } else { sign = "♎️" }
} else if month == "outubro" {
    if day < 23 { sign = "♎️" } else { sign = "♏️" }
} else if month == "novembro" {
    if day < 22 { sign = "♏️" } else { sign = "♐️" }
}
print("Seu signo é: \(sign)", terminator:" - ")
switch sign {
    case "♒️": print("Aquário")
    case "♉️": print("Touro")
    case "♈️": print("Áries")
    case "♍️": print("Virgem")
    case "♎️": print("Libra")
    case "♑️": print("Capricórnio")
    case "♋️": print("Câncer")
    case "♐️": print("Sagitário")
    case "♌️": print("Leão")
    case "♏️": print("Escorpião")
    case "♊️": print("Gêmeos")
    case "♓️": print("Peixes")
    default: print("nao foi possível determinar")
} */

// Codifique aqui sua versão, utilizando enum

//

//let mesNasc = "janeiro"

//
enum mesNasc  {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var signo = String()
let dia = 1
var seuSigno = mesNasc.julho

    switch seuSigno {
        case .janeiro:
        if dia < 20 {signo = "Capricornio"} else {signo = "Aquario"}
        case .fevereiro:
        if dia < 19 {signo = "Aquario"} else {signo = "Peixes"}
        case .marco:
        if dia < 20 {signo = "Peixes"} else {signo = "Aries"}
        case .abril:
        if dia < 20 {signo = "Aries"} else {signo = "Touro"}
        case .maio:
        if dia < 20 {signo = "Touro"} else {signo = "Gemeos"}
        case .junho:
        if dia < 21 {signo = "Gemeos"} else {signo = "Cancer"}
        case .julho:
        if dia < 22 {signo = "Cancer"} else {signo = "Leao"}
        case .agosto:
        if dia < 22 {signo = "Leao"} else {signo = "Virgem"}
        case .setembro:
        if dia < 22 {signo = "Virgem"} else {signo = "Libra"}
        case .outubro:
        if dia < 22 {signo = "Libra"} else {signo = "Escorpiao"}
        case .novembro:
        if dia < 21 {signo = "Escorpiao"} else {signo = "Sargitario"}
        case .dezembro:
        if dia < 21 {signo = "Sargitario"} else {signo = "Capricornio"}
        default:
            print("nao foi possível determinar")
            
    }
//            print ("signo \(self.seuSigno)")


var numero = 15


if numero > 10 {
    print ("Numero maior que 10")}
    else { numero <= 10
        print ("numero menor que 10")
    }
        
/*:
 Veja a tabela de signos por intervalo de datas:

 ![signos](signos.png)


 Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html)


[Anterior](@previous)  |  página 3 de 6  |  [Próximo: Enums e Switch](@next)
 */
