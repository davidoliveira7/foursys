/*:
## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
 */
/// Crie uma array matriz literal com 20 a 25 itens de dados de amostra para sua atividade diária - METAS
let exercicesAulaSwift:[Int] = [1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,30,31,33,35,37,39,41,43,45,47,49,51,53]
exercicesAulaSwift.count

//:  - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
//Escreva uma função que recebe o número diário como argumento e retorna uma mensagem como string.
//Ele deve retornar uma mensagem diferente com base em quão perto o número chega de sua meta.

func exercicesPage(page: Int) -> String{
    
    let meta = 10
    
    if page >= meta{
        return "OK, fez o trabalho de casa, continue assim"
    }else {
        return "Se esforce mais para melhorar"
    }
}

//:  - callout(Exercise): Write a `for…in` loop that iterates over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
//Escreva um loop for ... in que itera sobre seus dados de amostra, chame sua função para obter uma mensagem apropriada para cada item e imprima a mensagem no console.

for pages in exercicesAulaSwift {
    print(exercicesPage(page: pages))
}

/*:
[Previous](@previous)  |  page 16 of 18  |  [Next: Exercise: Screening Messages](@next)
 */
