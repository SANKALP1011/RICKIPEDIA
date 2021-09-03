//
//  QuizBrain.swift
//  RICKIPEDIA
//
//  Created by Sankalp Pandey on 30/06/21.
//

import Foundation
struct QuizBrain{
    
    // DICTIONARY FOR THE QUIZ.
    
    let quiz = [ Question(q: " The animated sitcom show ‘Rick and Monty’  was created by Dan Harmon and Justin Roiland.", a: "TRUE"),
    Question(q: " The job of Beth Smith was as a politician.", a: "FALSE"),
    Question(q: "The number of Rick’s universe is C-137.", a: "TRUE"),
    Question(q: "Rick travelled between universes using Bubble wrap.", a: "FALSE"),
    Question(q: "Disney channel show Rick and Morty shared some easter eggs Gravity Fall.", a: "TRUE"),
    Question(q: "Mr. Meeseeks introduced in the first season of show are blue aliens.", a: "TRUE"),
    Question(q: "The character Mr. Poopybutthole was voiced by Justin Roiland.", a: "TRUE"),
    Question(q: "Rick dragged Morty to the fictional arcade ‘Blips and Chitz.", a: "TRUE"),
    Question(q: "The name of the Smith family’s pet dog Snuffles.", a: "TRUE")]
    
    var questionNumber = 0
    
    func getQuestion() ->String {
        return quiz[questionNumber].question
    }
    
    func getProgressUpdated() -> Float{
        return Float(questionNumber) / Float(quiz.count)
    }
    
mutating func nextQuestion()
    {
        if questionNumber + 1 < quiz.count
        {
            questionNumber += 1
        }
        else{
            questionNumber = 0
        }
    }
    func getAnswer(userChoice: String) -> Bool{
        if userChoice == quiz[questionNumber].answer
        {
            return true
        }
        else {
            return false
        }
    }
    
}
