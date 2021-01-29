struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        // TODO: Write a response
        //return "?"
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        } else {
          
            let defaultNumber = question.count % 3
            
            if defaultNumber == 0 {
                return "That really depends"
            } else if defaultNumber == 1 {
                return "Ask me again tomorrow"
            }else {
                return "Let me think about it"
            }

        }
    }
}
