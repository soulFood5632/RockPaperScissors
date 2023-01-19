//
//  File.swift
//  RockPaperScissors
//
//  Created by Logan Underwood on 2023-01-16.
//

import Foundation

class Game {
    private static let GAME_HEIGHT = 1000
    private static let GAME_WIDTH = 500
    
    public let numOfRocks: Int
    public let numOfScissors: Int
    public let numOfPaper: Int
    
    public let isObstacles: Bool
    
    private let gameboard: Board
    
    init(numOfRocks: Int, numOfScissors: Int, numOfPaper: Int, isObstacles: Bool) {
        self.numOfRocks = numOfRocks
        self.numOfScissors = numOfScissors
        self.numOfPaper = numOfPaper
        self.isObstacles = isObstacles
        
    }
    
    private func randomStart() {
        
    }
    
    
    
}
