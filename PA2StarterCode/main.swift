//
//  main.swift
//  PA2StarterCode
//
//  Created by Gina Sprint on 9/21/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import Foundation

print("Hello, World!")

// general advice for getting started with an OOP problem/solution
// 1. familiarize yourself with the problem
// (e.g. reading the rules, playing the game, etc.)
// 2. identify the nouns of your problem
// e.g. card, deck (discard pile, draw pile), player, hand, etc..
// 3. identify the verbs of your problem
// how do the nouns interact with each other and the user
// e.g. a deck (draw pile) deals a hand of 7 cards to a player
// deck "deals" a hand, player "has a" hand, player "draws a" card, etc.
// 4. model your OOP design
// structs, enums, or classes?
// what are the state and behavior of each?
// what are the relationships? composition ("has-a"), inheritance ("is-a")

// start with your with your fundamental unit (type)

struct Card: CustomStringConvertible {
    var name: String
    var color: String // could be an enum
    var description: String {
        return "\(color)\(name)\(color)"
    }
    var secretDescription: String {
        return "🎴"
    }
}

func cardTester() {
    // can I model a blue 2?
    let card = Card(name: "2", color: "🔵")
    print("card:", card)
    print("secret version of card:", card.secretDescription)

    // TODO: can I have an array of cards?
    // can I shuffle them
    // can I print them
    // can I deal 7 of them to make a Hand
    var drawPile: [Card] = []
    for color in ["🔵", "🔴", "🟢", "🟡"] {
        for i in 0...9 {
            drawPile.append(Card(name: String(i), color: color))
        }
        for i in 1...9 {
            drawPile.append(Card(name: String(i), color: color))
        }
        // TODO: add draw2s, skips
    }
    // TODO: add wilds (I'd do this last, after the base game is working)
    print(drawPile)
    drawPile.shuffle()
    print("After shuffling")
    print(drawPile)
    // TODO: move the above code into a Deck struct
    // Deck has two arrays of Cards: drawPile and discardPile
}


cardTester()
