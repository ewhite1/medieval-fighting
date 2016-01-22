//
//  Character.swift
//  medieval-fighting
//
//  Created by Edward White on 1/22/16.
//  Copyright © 2016 Positivecapitalism. All rights reserved.
//

import Foundation
class Character {
    private var _hp: Int = 100
    private var _attackPower: Int = 10
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    var hp: Int {
        get {
            return _hp
        }
    }
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    init(startingHp: Int, attackPower: Int) {
        self._hp = startingHp
        self._attackPower = attackPower
    }
    func attemptAttack(attackPower: Int) -> Bool {
        self._hp -= attackPower
        return true
    }
}
