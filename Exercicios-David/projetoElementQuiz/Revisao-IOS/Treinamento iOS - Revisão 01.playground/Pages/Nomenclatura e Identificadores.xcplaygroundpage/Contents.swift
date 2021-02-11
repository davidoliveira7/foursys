/*:
## Nomenclatura e Identificadores
 Em nosso treinamento estudamos a importância de se utilizar uma nomenclatura apropriada, para identificarmos com facilidade os elementos de um programa.
 
 Vimos também que os identificadores devem ser definidos de forma clara e representar bem o que eles significam. Na Swift, utilizamos o padão *camel case* para definir os identificadores. Além disso, normalmente os identificadores são escritos utilizando a língua inglesa como referência.
 */
//:  - callout(Exercício): O trecho de código a seguir está calculando a média aritmética de um aluno, o número de faltas, e verificando se ele passou de ano. A lógica está funcionando, porém os identificadores estão fora do padrão de boas práticas que estudamos.  O seu papel será ajustar os identificadores, porém sem interferir no funcionamento do algoritmo:
let notaDoAluno1 = 3.0
let notaDoAluno2 = 1.5
let faltaDoAluno = 25

let calculoDaMedia = (notaDoAluno1 + notaDoAluno2) / 2

if (calculoDaMedia > 6.0 && faltaDoAluno < 26) {
    print("Aluno aprovado com média \(calculoDaMedia)")
} else {
    print("Aluno reprovado")
}

/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/ReferenceManual/LexicalStructure.html)


[Anterior](@previous)  |  página 2 de 7  |  [Próximo: Constantes e Variáveis](@next)
 */
