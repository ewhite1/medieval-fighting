//
//  player2.swift
//  medieval-fighting
//
//  Created by Edward White on 1/22/16.
//  Copyright © 2016 Positivecapitalism. All rights reserved.
//

import Foundation
class Player2: Character {
    private var _name = "Player 2"
    var name: String {
        get {
            return _name
        }
    }
    convenience init(name: String, hp: Int, attackPower: Int) {
        self.init(startingHp: hp, attackPower: attackPower)
        _name = name
    }
}