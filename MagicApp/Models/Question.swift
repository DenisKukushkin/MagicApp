//
//  Question.swift
//  MagicApp
//
//  Created by Denis Kukushkin on 20.11.2022.
//

struct Question {
    let title: String
    
    static func getFirstTrickQuestions() -> [Question] {
        [
            Question(title: "Guess any number and click Next"),
            Question(title: "Please multiple your number by 2 and click Next"),
            Question(title: "Please add 8 to the result and click Next"),
            Question(title: "Please devide the result by 2 and click Next"),
            Question(title: "And substruct your number and click Next")
        ]
    }
    
    static func getSecondTrickQuestions() -> [Question] {
        [
            Question(title: "Please think of three consecutive numbers, for example: 4, 5, 6 or 16, 17, 18"),
            Question(title: "Now please calculate the sum of your numbers and input it above")
        ]
    }
 
}
