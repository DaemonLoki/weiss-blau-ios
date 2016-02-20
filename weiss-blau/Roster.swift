//
//  Roster.swift
//  weiss-blau
//
//  Created by Stefan Blos on 20.02.16.
//  Copyright © 2016 Stefan Blos. All rights reserved.
//

import Foundation

class Roster {
    
    var _players: [Player]
    
    var players: [Player] {
        return _players
    }
    
    init() {
        _players = [Player]()
        _players.append(Player(name: "Alexander Hack", number: 5, position: "Forward", height: 1.86, weight: 85, age: 25))
        _players.append(Player(name: "Julius Stintzing", number: 6, position: "Forward", height: 1.86, weight: 88, age: 26))
        _players.append(Player(name: "Stefan Blos", number: 8, position: "Guard", height: 1.84, weight: 84, age: 25))
        _players.append(Player(name: "Michael Theiler", number: 9, position: "Guard", height: 1.74, weight: 75, age: 21))
        _players.append(Player(name: "Florian Glöckner", number: 10, position: "Guard", height: 1.86, weight: 82, age: 23))
        _players.append(Player(name: "Kilian Hack", number: 11, position: "Center", height: 1.96, weight: 90, age: 22))
        _players.append(Player(name: "Florian Stodolka", number: 12, position: "Forward/Center", height: 1.91, weight: 100, age: 23))
        _players.append(Player(name: "Thomas Kurth", number: 13, position: "Forward", height: 1.89, weight: 98, age: 35))
        _players.append(Player(name: "Hans Müller", number: 15, position: "Guard", height: 1.85, weight: 70, age: 21))
    }
    
}