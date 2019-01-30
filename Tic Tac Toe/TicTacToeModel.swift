//
//  TicTacToeModel.swift
//  Tic Tac Toe
//
//  Created by Jack Deardorff on 1/18/19.
//  Copyright © 2019 Jack Deardorff. All rights reserved.
//

import Foundation


enum Tilestate{
    case X
    case O
    case Blank
}


struct TicTacToe{
    let newTileArray: [[Tilestate]] = [[.Blank, .Blank, .Blank],[.Blank, .Blank, .Blank], [.Blank, .Blank, .Blank]]
    
    
    var tileArray: [[Tilestate]] = [[.Blank, .Blank, .Blank],[.Blank, .Blank, .Blank], [.Blank, .Blank, .Blank]]
    
    var playerTurn = Tilestate.X
}




