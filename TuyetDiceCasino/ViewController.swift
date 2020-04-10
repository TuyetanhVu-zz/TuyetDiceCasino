//
//  ViewController.swift
//  TuyetDiceCasino
//
//  Created by Tuyetanh Vu on 4/7/20.
//  Copyright © 2020 Tuyetanh Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var scoreCounter = 0
    var scoreResetToZero = 0
    //var maxScore = 100

    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    @IBOutlet weak var scoreCounterLabel: UILabel!
    

    @IBAction func startOver(_ sender: UIButton) {
        scoreCounter = 0
        scoreCounterLabel.text = String(scoreCounter)
    }
    @IBAction func rollButton(_ sender: UIButton) {
        
        let dices = [#imageLiteral(resourceName: "dice1image"), #imageLiteral(resourceName: "dice2image"), #imageLiteral(resourceName: "dice3image"), #imageLiteral(resourceName: "dice4image"), #imageLiteral(resourceName: "dice5image"),#imageLiteral(resourceName: "dice6image")]
        leftDice.image = dices[Int.random(in: 0...5)]
        rightDice.image = dices[Int.random(in: 0...5)]
      
        
        if leftDice.image == dices[4]{
            scoreCounter += 5
            //print("test")
            scoreCounterLabel.text = String(scoreCounter)
        }
        
        if rightDice.image == dices[4]{
            scoreCounter += 5
            //print("test")
            scoreCounterLabel.text = String(scoreCounter)
        }
     
        if checkWin(score: scoreCounter) == true {
            //if won
            scoreCounter = 0
        }
    }
    
    func checkWin(score: Int) -> Bool{
        if score >= 100 {
            return true
        }
        return false
    }
}

