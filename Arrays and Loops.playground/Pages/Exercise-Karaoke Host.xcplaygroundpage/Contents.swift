var songs = [String]()
songs.append("Run to the Hilss")
songs.append("One")
songs.append("Paranoid")
songs.append("Round About")
songs.append("Stairway to Heaven")
songs.append("Boate Azul")

var singers = ["Pessoa 1","Pessoa 2","Pessoa3 ","Pessoa 4","Pessoa 5","Pessoa 6"]

/*:
 - callout(Exercise): 
 One enthusiastic singer wants to add three songs at once. Create an array holding this one singer's song list and use the `+=` operator to append their whole list to the end of the group's song list.
 */
let songsEnthusiastic = ["Brasilia Amarela", "Gita", "Balao Magico"]
songs += songsEnthusiastic
print(songs)
print(singers)
/*:
 - callout(Exercise): 
 Write a `for…in` loop and, for every song title in the array, print an encouraging announcement to let the next singer know that it's their turn.
 */
print("Relacao de musicas:")
for item in songs{
    print(item)
}


songs.shuffle()
singers.shuffle()
print("Escolha a musicas:")
//for index in 0..<songs.count{
//    print("\(index + 1): \(songs[index])")
    for index in 0..<singers.count{
        print("\(index + 1): \(songs[index]) - \(singers[index])")
    }

/*:
 - callout(Exercise): 
 After the loop has called everyone up to sing, use the `removeAll` method on the song list to clear out all the past songs.
 */

/*:
[Previous](@previous)  |  page 14 of 18  |  [Next: Exercise: Counting Votes](@next)
 */
