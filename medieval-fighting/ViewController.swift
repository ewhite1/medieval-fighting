//
//  ViewController.swift
//  medieval-fighting
//
//  Created by Edward White on 1/19/16.
//  Copyright © 2016 Positivecapitalism. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //vars and constants
    let player1 = Player1(name: "Battle Orc", hp: 100, attackPower: 20)
    let player2 = Player2(name: "Legionaire", hp: 100, attackPower: 20)
    
    @IBOutlet weak var player1Attack: UIButton!
    @IBOutlet weak var player2Attack: UIButton!
    @IBOutlet weak var startGame: UIButton!
    @IBOutlet weak var printLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startGame(sender: UIButton) {
        
        //hide startgame button
        startGame.hidden = true
        //unhide attack buttons
        player1Attack.hidden = false
        player2Attack.hidden = false
        
        //play sound when pressed
        
    }

    @IBAction func player1Attack(sender: UIButton) {
        //attack
        // send data to the bottom label
        //hide player2 attack button for 2 seconds
    }
    @IBAction func player2Attack(sender: UIButton) {
        //attack
        //send info about attack to the bottom label
        //hide player1 attack button for 2 seconds
    }
}

