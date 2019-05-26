//
//  QuestionBank.swift
//  TopQuiz
//
//  Created by Bartek Bugajski on 21/05/2019.
//  Copyright © 2019 BB. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question]()
    
    init() {
        
    list.append(Question(image: "superman" , questionText: "Who has most recently portrayed Superman on the big screen?", choiceA: "Henry Cavill", choiceB: "Christian Bale", choiceC: "Jim Caviezel", choiceD: "Zachary Levi", answer: 1))
    
    list.append(Question(image: "batman", questionText: "Which one of these actors was never cast as Batman?", choiceA: "Adam West", choiceB: "Michael Keaton", choiceC: "Clive Owen", choiceD: "Ben Affleck", answer: 3))
    
    list.append(Question(image: "avengers", questionText:"How many Avengers is featured in the first film from 2012?", choiceA: "5", choiceB: "7", choiceC: "6", choiceD: "4", answer: 3))
    
    list.append(Question(image: "superman-1", questionText:"Who was Clark Kent's first love back in Smallville?", choiceA: "Lois Lane", choiceB: "Chloe Sullivan", choiceC: "Lana Lang", choiceD: "Wonder Woman", answer: 3))
        
    list.append(Question(image: "ironman", questionText:"Who is the voice of JARVIS in the Marvel movies that feature Iron-Man?", choiceA: "Ryan Reynolds", choiceB: "Paul Bettany", choiceC: "Michael J. Fox", choiceD: "Michael B. Jordan", answer: 2))
    
    list.append(Question(image: "marvel", questionText:"Who is Brie Larson playing in the Marvel Cinematic Universe?", choiceA: "Scarlet Witch", choiceB: "Black Widow", choiceC: "Captain Marvel", choiceD: "Valkyrie", answer: 3))
    
    list.append(Question(image: "spiderman", questionText: "In Sam Raimi's Spider-Man 2 which actor almost replaced Tobey Maguire in the starring role?", choiceA: "Chris Evans", choiceB: "Jake Gylenhaal", choiceC: "James Van Der Beek", choiceD: "Freddie Prinze Jr.", answer: 2))
    
    list.append(Question(image: "batman-1", questionText: "Who was the first actor to portray Joker on screen back in 1966?", choiceA: "Mark Hamil", choiceB: "Adam West", choiceC: "Jack Nicholson", choiceD: "Cesar Romero", answer: 4))
    
    list.append(Question(image: "ironman", questionText:"And the director of the first Iron-Man movie is...", choiceA: "Taika Waititi", choiceB: "Jon Favreau", choiceC: "Joe Russo", choiceD: "Josh Whedon", answer: 2))
    
    list.append(Question(image: "avengers", questionText:"In Thor: Ragnarok film, what is the name of the planet the main hero gets imprisoned on?", choiceA: "Ego", choiceB: "Vormir", choiceC: "Sakaar", choiceD: "Asgard", answer: 3))
    
        
    list.append(Question(image: "marvel", questionText:"Which one of these actors never starred as Bruce Banner/Hulk?", choiceA: "Lou Ferrigno", choiceB: "Edward Norton", choiceC: "Eric Bana", choiceD: "Sean Bean", answer: 4))
        
    list.append(Question(image: "marvel", questionText:"Which one of these actors never starred as Bruce Banner/Hulk?", choiceA: "Lou Ferrigno", choiceB: "Edward Norton", choiceC: "Eric Bana", choiceD: "Sean Bean", answer: 4))
    
    }
}


/*
 questions.append(Quiz(question: "Who was supposed to direct Hobbit movies before Peter Jackson took over?", answers: ["Ron Howard", "Darren Aronofsky", "Brian De Palma", "Guillermo del Toro", "Robert Rodriguez"], answer: 3))
 
 questions.append(Quiz(question: "Which superhero was played by Henry Cavill?", answers: ["Batman", "Shazam", "Superman", "Green Lantern", "The Joker"], answer: 2))
 
 
 
 list.append(question: "How many Jurassic Park movies were directed by Steven Spielberg?", answers: ["1", "3", "2", "All of them.", "None."], answer: 2)
 
 list.append(question: "Who almost replaced Tobey Maguire as Peter Parker in Spider-Man 2?", answers: ["Leonardo DiCaprio", "Tom Welling", "Chris Evans", "Jake Gylenhaal", "Elijah Wood"], answer: 3)
 
 list.append(question: "Who directed King Kong's remake from 2005?", answers: ["Joe Johnston", "Steven Spielberg", "Gareth Edwards", "Peter Jackson", "Guillermo del Toro"], answer: 2)
 */
