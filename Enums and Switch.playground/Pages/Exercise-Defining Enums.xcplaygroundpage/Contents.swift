/*:
## Exercise: Defining Enums
 
 Get some practice defining your own enums. Remember the rules about naming enums and their cases. 

 - callout(Exercise): Define an enum for the compass directions: North, East, South, and West.
 */
enum PontosCardeais {
    case North, East, South, West
}
//:  - callout(Exercise): Define an enum for jigsaw puzzle pieces: corner, edge, and middle.
enum QuebraCabecca {
    case pecaCantoSupDireito
    case pecaCantoInfDireito
    case pecaCantoSupEsquerdo
    case pecaCantoInfEsquerdo
    case pecaCentroComQuebra
    case pecaBordaInfDireita
    case pecaBordaInfEsquerda
    case pecaBordaDireita
    case pecaBordaEsquerda
}
//:  - callout(Excercise): Define an enum for the playback modes in a music app: standard, repeat, repeat all, and shuffle.
// Can't use "repeat" since it's a unique keyword in Swift. repeatOne is a good candidate
enum Playlist {
    case tocar
    case tocarNovamente
    case tocarNovamenteTudo
    case tocarAleatorio
}
/*:
[Previous](@previous)  |  page 17 of 21  |  [Next: Exercise: Counting Chickens](@next)
 */
