//
//  GameView.swift
//  RockPaperScissors
//
//  Created by Logan Underwood on 2023-01-15.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        NavigationView {
            Text("Hello Friends")
        }
        .navigationBarBackButtonHidden()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
