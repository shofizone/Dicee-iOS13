//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       loadImageView()
    }

    @IBAction func rollAction(_ sender: UIButton) {
        loadImageView();
            }
    
    
    func loadImageView(){
      let images = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceSix")]
        
        diceImageViewOne.image = images[getRandom()]
        
        diceImageTwo.image = images[getRandom()]
    }
    
    func getRandom() -> Int {
        return Int.random(in: 0...5);
    }
    
   
}

