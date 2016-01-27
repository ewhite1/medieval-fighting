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
        //unhide attack buttons(this has been replaced by firstAttack)
        player1Attack.hidden = false
        player2Attack.hidden = false
        printLbl.text = "Press attack to begin"
        //firstAttack()
        //play sound when pressed
        
    }

    @IBAction func player1Attack(sender: UIButton) {
        //attack
        player2Attack.hidden = true
        if player1.attemptAttack(player1.attackPower){
            printLbl.text = "Attacked \(player2.name) for \(player1.attackPower) HP"
        } else {
            printLbl.text = "attack on \(player2.name) was unsuccessful!"
        }

            if !player2.isAlive {
                printLbl.text = "\(player1.name) Killed \(player2.name)!"
                startGame.hidden = false
                player1Attack.hidden = true
                player2Attack.hidden = true
        }
        //hide player2 attack button for 2 seconds
        let delay = 1.0
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(Double(delay) * Double(NSEC_PER_SEC)))
        dispatch_after(time, dispatch_get_main_queue()) {
            self.player2Attack.hidden = false
            self.player1Attack.hidden = true
        }
    }
    @IBAction func player2Attack(sender: UIButton) {
        player1Attack.hidden = true
        if player2.attemptAttack(player2.attackPower){
            printLbl.text = "Attacked \(player1.name) for \(player2.attackPower) HP"
        } else {
            printLbl.text = "attack on \(player2.name) was unsuccessful!"
        }
        if !player1.isAlive {
            printLbl.text = "\(player2.name) Killed \(player1.name)!"
            startGame.hidden = false
            player1Attack.hidden = true
            player2Attack.hidden = true
        }
        let delay = 1.0
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(Double(delay) * Double(NSEC_PER_SEC)))
        dispatch_after(time, dispatch_get_main_queue()) {
            self.player2Attack.hidden = true
            self.player1Attack.hidden = false
        }


        
    }
    
    func firstAttack() {
        //generate code to see who gets to go first
        let rand = Int(arc4random_uniform(2))
        if rand == 0 {
            player1Attack.hidden = true
            player2Attack.hidden = false
        } else {
            player1Attack.hidden = false
            player2Attack.hidden = true
        }
    }
        
        

    
}

