//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    let diceImages = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView1.alpha = 0.5
        diceImageView2.alpha = 0.5
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView2.alpha = 1
        diceImageView1.alpha = 1
                
        diceImageView1.image = diceImages.randomElement()
        diceImageView2.image = diceImages[Int.random(in: 0...5)]
    }
}

