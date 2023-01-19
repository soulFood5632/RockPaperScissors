//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Logan Underwood on 2023-01-15.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var showSettings: Bool = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                ZStack {
                    Text("Rock Paper Scissors")
                        .font(.system(size: 50))
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                        .opacity(0.5)
                        .frame(width: 325, height: 250)
                    
                }
                
                if !self.showSettings {
                    Button("Play Now") {
                        withAnimation {
                            self.showSettings = true
                        }
                    }
                    .padding()
                    .buttonStyle(.borderless)
                    .font(.system(size: 25))
                    
                    
                }
                
                
                if self.showSettings {
                    VStack {
                        SettingsView()
                        NavigationLink {
                            GameView()
                        } label: {
                            Text("Play")
                                .bold()
                                .foregroundColor(.green)
                                .font(.system(size: 25))
                        }
                        
                        .padding(.bottom)
                        Button {
                            withAnimation {
                                self.showSettings = false
                            }
                        } label: {
                            Text("Cancel")
                                .foregroundColor(.red)
                                .font(.system(size: 15))
                        }
                        .padding(.bottom)
                    }
                        .transition(.opacity)
                }
            }
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {        static var previews: some View {
        ContentView()
    }
}

