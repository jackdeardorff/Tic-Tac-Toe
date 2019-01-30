//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Jack Deardorff on 1/18/19.
//  Copyright © 2019 Jack Deardorff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var allButtons: UIButton!
    @IBOutlet var restartAllButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for restart in restartAllButtons{
            restart.setImage(nil, for: .normal)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    var game = TicTacToe()
    
    
    @IBOutlet weak var restartButtonFunction: UIButton!
    @IBAction func restartButton(_ sender: Any) {
        for restart in restartAllButtons{
            restart.setImage(nil, for: .normal)
        }
        game.tileArray = game.newTileArray
    }
    
   @IBAction func TicTacToeTiles(_ sender: Any) {
    }

    @IBAction func boardButtons(_ sender: UIButton) {
        if game.tileArray[sender.tag/3][sender.tag%3] == Tilestate.Blank{
            game.tileArray[sender.tag/3][sender.tag%3] = game.playerTurn
            
            if game.playerTurn == .X {
                print("Should be X move")
                let image = UIImage(named: "cross")
                sender.setImage(image, for: .normal)
                game.playerTurn = .O
        }
            else if game.playerTurn == .O {
                print("Should be Y move")
                sender.setImage(UIImage(named: "circle"), for: .normal)
                game.playerTurn = .X
            }
        
    }
    
}

}
