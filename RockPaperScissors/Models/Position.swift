//
//  Position.swift
//  RockPaperScissors
//
//  Created by Logan Underwood on 2023-01-16.
//

import Foundation

public struct Position: Equatable, Hashable {
    public let x_pos: Int
    public let y_pos: Int
    
    public static let tolerance = 8
    
    init(x_pos: Int, y_pos: Int) {
        self.x_pos = x_pos
        self.y_pos = y_pos
    }
    
    
    public static func == (pos1: Position, pos2: Position) -> Bool {
        return abs(pos1.x_pos - pos2.x_pos) <= tolerance && abs(pos1.y_pos - pos2.y_pos) <= tolerance
    }
    
}

public extension Position {
    static func getRandomPosition(maxHeight: Int, maxWidth: Int) -> Position {
        return Position(x_pos: Int.random(in: 0...maxWidth), y_pos: Int.random(in: 0...maxHeight))
    }
}
