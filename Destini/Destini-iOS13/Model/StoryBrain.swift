//
//  StoryBrain.swift
//  Destini-iOS13
//


import UIKit

struct StoryBrain  {
    
    let story = [
        Question(q: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.", ch1: "I'll hop in. Thanks for the help!", ch2: "Better ask him if he's a murderer first.", p1: 2, p2: 1),
        Question(q: "He nods slowly, unfazed by the question.", ch1: "At least he's honest. I'll climb in.", ch2: "Wait, I know how to change a tire.", p1: 2, p2: 3),
        Question(q: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", ch1:  "I love Elton John! Hand him the cassette tape.", ch2: "It's him or me! You take the knife and stab him.", p1: 5, p2: 4),
        Question(q: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?", ch1: "The", ch2: "End", p1: 0, p2: 0),
        Question(q: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.", ch1: "The", ch2: "End", p1: 0, p2: 0),
        Question(q: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'", ch1: "The", ch2: "End", p1: 0, p2: 0)
    ]
    
    var questionNumber = 0
    var nextQuestionNumber = 0
    
    mutating func checkAnswer(_ userAnswer:String ) -> Int {
        if userAnswer == story[questionNumber].choice1 {
            nextQuestionNumber = story[questionNumber].path1
        }
        else if userAnswer == story[questionNumber].choice2 {
            nextQuestionNumber = story[questionNumber].path2
        }
        return nextQuestionNumber
    }
    
    func getStoryText() -> String {
        return story[questionNumber].text
    }
    
    func getChoice1Text() -> String {
        return story[questionNumber].choice1
    }
    
    func getChoice2Text() -> String {
        return story[questionNumber].choice2
    }
     
    mutating func nextQuestion() {
        questionNumber = nextQuestionNumber
    }
   
    
}


