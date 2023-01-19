//
//  File.swift
//  RockPaperScissors
//
//  Created by Logan Underwood on 2023-01-15.
//

import Foundation

public struct Player: MapElement {
    public var state: CurrentState
    public var position: Position
    public var velocity: CGVector
    
    
    init(state: CurrentState, position: Position) {
        self.state = state
        self.position = position
        self.velocity = CGVector(dx: 0, dy: 0)
    }
    

    
    
}



public enum CurrentState {
    case Rock
    case Scissors
    case Paper
}
