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
        
     /*
    list.append(Question(image: "superman" , questionText: "Who has most recently portrayed Superman on the big screen?", choiceA: "Henry Cavill", choiceB: "Christian Bale", choiceC: "Jim Caviezel", choiceD: "Zachary Levi", answer: 1))
    */
        
    list.append(Question(image: "batman", questionText: "Which one of these actors was never cast as Batman?", choiceA: "Adam West", choiceB: "Michael Keaton", choiceC: "Clive Owen", choiceD: "Ben Affleck", answer: 3))
    
    list.append(Question(image: "avengers", questionText:"How many Avengers is featured in the first film from 2012?", choiceA: "5", choiceB: "7", choiceC: "6", choiceD: "4", answer: 3))
    
    list.append(Question(image: "superman-1", questionText:"Who was Clark Kent's first love back in Smallville?", choiceA: "Lois Lane", choiceB: "Chloe Sullivan", choiceC: "Lana Lang", choiceD: "Wonder Woman", answer: 3))
        
    list.append(Question(image: "ironman", questionText:"Who is the voice of JARVIS in the Marvel movies that feature Iron-Man?", choiceA: "Ryan Reynolds", choiceB: "Paul Bettany", choiceC: "Michael J. Fox", choiceD: "Michael B. Jordan", answer: 2))
    
        /*
    list.append(Question(image: "spiderman", questionText: "In Sam Raimi's Spider-Man 2 which actor almost replaced Tobey Maguire in the starring role?", choiceA: "Chris Evans", choiceB: "Jake Gylenhaal", choiceC: "James Van Der Beek", choiceD: "Freddie Prinze Jr.", answer: 2))
    
    list.append(Question(image: "joker", questionText: "Who was the first actor to portray Joker on screen back in 1966?", choiceA: "Mark Hamil", choiceB: "Adam West", choiceC: "Jack Nicholson", choiceD: "Cesar Romero", answer: 4))
    
    list.append(Question(image: "ironman", questionText:"Who directed the first Iron-Man film?", choiceA: "Taika Waititi", choiceB: "Jon Favreau", choiceC: "Joe Russo", choiceD: "Josh Whedon", answer: 2))
    
    list.append(Question(image: "thor", questionText:"In Thor: Ragnarok film, what is the name of the planet the main hero gets imprisoned on?", choiceA: "Ego", choiceB: "Vormir", choiceC: "Sakaar", choiceD: "Asgard", answer: 3))
        
    list.append(Question(image: "hulk", questionText:"Which one of these actors never starred as Bruce Banner/Hulk?", choiceA: "Lou Ferrigno", choiceB: "Edward Norton", choiceC: "Eric Bana", choiceD: "Sean Bean", answer: 4))
        
    list.append(Question(image: "groot", questionText: "Who is the voice of Groot?", choiceA: "Vin Diesel", choiceB: "Ryan Reynolds", choiceC: "Johnny Lee Miller", choiceD: "Bradley Cooper", answer: 1))
        
    list.append(Question(image: "deadpool", questionText: "Which famous actor has a brief cameo as The Vanisher in Deadpool 2?", choiceA: "Tom Cruise", choiceB: "Brad Pitt", choiceC: "Leonardo DiCaprio", choiceD: "Tommy Lee Jones", answer: 2))
    
    list.append(Question(image: "captainamerica", questionText: "What is the name of Captain America's first love in the First Avenger?", choiceA: "Peggy Sue", choiceB: "Peggy Lane", choiceC: "Peggy Carter", choiceD: "Maggie Porter", answer: 3))
    
    list.append(Question(image: "wolverine", questionText: "What is the metal alloy that was injected into Wolverine's body?", choiceA: "Adamantium", choiceB:" Aluminium", choiceC: "Vibranium", choiceD: "Uru", answer: 1))
        
    list.append(Question(image: "ww", questionText: "What is the name of the actress portraying Wonder Woman in the 2017 film?", choiceA: "Shannon Elizabeth", choiceB: "Gal Gadot", choiceC: "Katrina Kaif", choiceD: "Amy Adams", answer: 2))
        
    list.append(Question(image: "hulk", questionText: "What is Hulk's real name?", choiceA: "Bruce Tanner", choiceB: "Brick Banner", choiceC: "Rick Runner", choiceD: "Bruce Banner", answer: 4))
        
    list.append(Question(image: "daredevil", questionText: "While not fighting crime as Daredevil by night, who is Matt Murdock by day?", choiceA: "A lawyer.", choiceB: "An old people caretaker.", choiceC: "A driver.", choiceD: "A magician.", answer: 1))
        
    list.append(Question(image: "award", questionText: "Which one of these actors received an Oscar for his role as the Joker?", choiceA: "Jack Nicholson", choiceB: "Cesar Romero", choiceC: "Heath Ledger", choiceD: "Jared Leto", answer: 3))
        */
        
    list.append(Question(image: "spiderman", questionText: "Which villain Peter Parker does not encounter in Spider-Man 3?", choiceA: "Sandman", choiceB: "Venom", choiceC: "Green Goblin", choiceD: "Vulture", answer: 4))
        
    list.append(Question(image: "batman", questionText: "Who played Catwoman in Batman Returns directed by Tim Burton?", choiceA: "Kim Basinger", choiceB: "Nicole Kidman", choiceC: "Michelle Pfeiffer", choiceD: "Sharon Stone", answer: 3))
        
    list.append(Question(image: "hulk", questionText: "What rays have Hulk been exposed to?", choiceA: "Alpha", choiceB: "Gamma", choiceC: "Beta", choiceD: "Ramma", answer: 2))

        
    }
}


/*
 questions.append(Quiz(question: "Who was supposed to direct Hobbit movies before Peter Jackson took over?", answers: ["Ron Howard", "Darren Aronofsky", "Brian De Palma", "Guillermo del Toro", "Robert Rodriguez"], answer: 3))
 
 questions.append(Quiz(question: "Which superhero was played by Henry Cavill?", answers: ["Batman", "Shazam", "Superman", "Green Lantern", "The Joker"], answer: 2))
 
 
 
 list.append(question: "How many Jurassic Park movies were directed by Steven Spielberg?", answers: ["1", "3", "2", "All of them.", "None."], answer: 2)
 
 list.append(question: "Who almost replaced Tobey Maguire as Peter Parker in Spider-Man 2?", answers: ["Leonardo DiCaprio", "Tom Welling", "Chris Evans", "Jake Gylenhaal", "Elijah Wood"], answer: 3)
 
 list.append(question: "Who directed King Kong's remake from 2005?", answers: ["Joe Johnston", "Steven Spielberg", "Gareth Edwards", "Peter Jackson", "Guillermo del Toro"], answer: 2)
 */
