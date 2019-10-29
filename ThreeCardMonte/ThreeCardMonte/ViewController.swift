//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var pickWinOrLose: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBOutlet weak var card0: UIButton!
    
    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card2: UIButton!
    
    @IBAction func cardBackButton(_ sender: UIButton) {
        
//        let image = UIImage(named: "threeCard")
//
//        let image2 = UIImage(named: "kingCard")
//
//        let image3 = UIImage(named: "cardBackRed")
        
//        var cardFlip: (cardType: UIImage?, name: String)
        
        let card = 0..<3
         let winningNumber = card.randomElement()
      
        print(winningNumber)
        
//        let images = ["threeCard", "kingCard","threeCard"]
        
        switch sender.tag {
        
        case 0:
          
            if winningNumber == sender.tag{
                
                sender.setImage(UIImage(named: "kingCard"), for: .normal)
               
                pickWinOrLose.text = "You Win! Play Again?"
          
            } else {
                
                sender.setImage(UIImage(named: "threeCard"), for: .normal)
               
                pickWinOrLose.text = "You Lose! Try Again?"
                
            }
            [card0, card1, card2].forEach({$0?.isEnabled = false})
//            cardFlip = (image3, "cardBackRed")
            // another way for me to complete this is to randomize the image as well.
            // sender.setImage(UIImage(named:images.randomElement() ?? "threeCard"), for: .normal)
        case 1:
            if winningNumber == sender.tag {
               
                sender.setImage(UIImage(named: "kingCard"), for: .normal)
                
                pickWinOrLose.text = "You Win! Play Again?"
            } else {
                
                sender.setImage(UIImage(named: "threeCard"), for: .normal)
                
                pickWinOrLose.text = "You Lose! Try Again?"
                
            }
            [card0, card1, card2].forEach({$0?.isEnabled = false})
//           cardFlip = (image2, "kingCard")
        case 2:
           
            if winningNumber == sender.tag {
            
                sender.setImage(UIImage(named: "kingCard"), for: .normal)
                
                pickWinOrLose.text = "You Win! Play Again?"
            
            } else {
            
                sender.setImage(UIImage(named: "threeCard"), for: .normal)
                
                pickWinOrLose.text = "You Lose! Try Again?"
                
                
                
            }
            [card0, card1, card2].forEach({$0?.isEnabled = false})
//            cardFlip = (image, "threeCard")
        default:
            print("Please pick a card.")
            
        }
        
//        cardBackButton(UIButton) cardFlip.cardType
    }
    
    
    @IBAction func newGameButton(_ sender: UIButton) {
        [card0, card1, card2].forEach({$0?.isEnabled = true})
        [card0, card1, card2].forEach({$0?.setImage(UIImage(named: "cardBackRed"), for: .normal)})
    }
    
}

// view image behind another 


// .isEnabled = true

