//
//  Board.swift
//  RockPaperScissors
//
//  Created by Logan Underwood on 2023-01-16.
//

import Foundation

class Board {
    public let height: Int
    public let width: Int
    
    private var listOfObstacles: [Obstacle]
    
    private var listOfActors: [Player]
    
    init(height: Int, width: Int) {
        self.height = height
        self.width = width
        self.listOfObstacles = [Obstacle]()
        self.listOfActors = [Player]()
    }
    
    public func populateBoard(numOfRocks: Int, numOfScissors: Int, numOfPaper: Int, isObstacles: Bool) {
        self.listOfActors.append(contentsOf: getRandomActors(numOfRocks: numOfRocks, numOfScissors: numOfScissors, numOfPaper: numOfPaper))
        self.listOfObstacles.append(contentsOf: getRandomObstacles())
       
    }
    
    public func getCurrentMembers() -> [Player] {
        return listOfActors
    }
    
    public func getCurrentObstacles() -> [Obstacle] {
        return listOfObstacles
    }
    
    public func makeMoves() {
        
    }
    
    public func getRandomActors(numOfRocks: Int, numOfScissors: Int, numOfPaper: Int) -> [Player] {
        var listOfPos = getRandomPositions(ofSize: numOfPaper + numOfRocks + numOfScissors)
        
        
        
        var listOfPlayers = [Player]()
        
        for startPosition in listOfPos {
            for _ in 0 ..< numOfRocks {
                listOfPlayers.append(Player(state: CurrentState.Rock, position: startPosition))
            }
            
            for _ in 0 ..< numOfPaper {
                listOfPlayers.append(Player(state: CurrentState.Paper, position: startPosition))
            }
            
            for _ in 0 ..< numOfPaper {
                listOfPlayers.append(Player(state: CurrentState.Paper, position: startPosition))
            }
            
        }
        
        return listOfPlayers
        
        
    }
    
    public func getRandomObstacles() -> [Obstacle] {
        var listOfPos = getRandomPositions(ofSize: Int.random(in: 0...15))
        
        
        var listOfObstacle = [Obstacle]()
        
        for position in listOfPos {
            listOfObstacle.append(Obstacle(position: position))
            
        }
        
        return listOfObstacle
    }
        
        
    
    
    private func getRandomPositions(ofSize: Int) -> [Position] {
        var listOfPos = [Position]()
        for _ in 0 ..< ofSize {
            while true {
                let position = Position.getRandomPosition(maxHeight: self.height, maxWidth: self.width)
                if listOfPos.contains(position) {
                    listOfPos.append(position)
                    break;
                }
            }
            
        }
        
        return listOfPos
    }

    
    
}


