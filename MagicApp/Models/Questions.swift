//
//  Questions.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

struct Question {
    let title: String
    
    static func getQuestions() -> [Question] {
        [
            Question(title: "Guess any number and click Next"),
            Question(title: "Please multiple your number by 2 and click Next"),
            Question(title: "Please add 8 to the result and click Next"),
            Question(title: "Please devide the result by 2 and click Next"),
            Question(title: "And substruct your number and click Next")
        ]
    }
 
}
