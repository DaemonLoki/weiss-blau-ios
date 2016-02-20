//
//  Player.swift
//  weiss-blau
//
//  Created by Stefan Blos on 20.02.16.
//  Copyright © 2016 Stefan Blos. All rights reserved.
//

import Foundation
import UIKit

class Player {
    
    var _name: String!
    var _number: Int!
    var _position: String!
    var _height: Double!
    var _weight: Int!
    var _profilePic: UIImage!
    var _age: Int!
    
    var name: String {
        return _name
    }
    
    var number: Int {
        return _number
    }
    
    var position: String {
        return _position
    }
    
    var height: Double {
        return _height
    }
    
    var weight: Int {
        return _weight
    }
    
    var profilePic: UIImage {
        return _profilePic
    }
    
    var age: Int {
        return _age
    }
    
    init(name: String, number: Int, position: String, height: Double, weight: Int, age: Int) {
        self._name = name
        self._number = number
        self._position = position
        self._height = height
        self._weight = weight
        self._profilePic = UIImage(named: "\(number)")
        self._age = age
    }
}