//
//  SettingsView.swift
//  RockPaperScissors
//
//  Created by Logan Underwood on 2023-01-15.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var numOfRocks: Float = 15
    @State private var numOfSciccors: Float = 15
    @State private var numOfPaper: Float = 15
    @State private var includeObstacles: Bool = true
    
    var body: some View {
        
        let settingSpacer: CGFloat = 40.0
        
        NavigationStack {
            
            
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 5.0)
                    .padding()
                    .foregroundColor(.cyan)
                    .opacity(0.2)
                
                VStack {
                    
                    VStack {
                        Text("\(Int(numOfRocks)) Rocks")
                        Slider(value: $numOfRocks, in: 0...45, step: 3) {
                            Text("Slider")
                        } minimumValueLabel: {
                            Text("0")
                        } maximumValueLabel: {
                            Text("45")
                        }
                    }
                    .padding(.horizontal, settingSpacer)
                    
                    
                    VStack {
                        Text("\(Int(numOfSciccors)) Scissors")
                        Slider(value: $numOfSciccors, in: 0...45, step: 3) {
                            Text("Slider")
                        } minimumValueLabel: {
                            Text("0")
                        } maximumValueLabel: {
                            Text("45")
                        }
                    }
                    .padding(.horizontal, settingSpacer)
                    
                    VStack {
                        Text("\(Int(numOfPaper)) Paper")
                        Slider(value: $numOfPaper, in: 0...45, step: 3) {
                            Text("Slider")
                        } minimumValueLabel: {
                            Text("0")
                        } maximumValueLabel: {
                            Text("45")
                        }
                    }
                    .padding(.horizontal, settingSpacer)
                    .padding(.bottom)
                    
                    Toggle("Include Obstacles", isOn: $includeObstacles)
                        .padding(.horizontal, settingSpacer)
                        .toggleStyle(.button)
                        .buttonStyle(.borderedProminent)
                        .tint(.cyan)
                    
                    
                    
                    
                }
                
                
            }
            
            
            
            
        }
        
        
    }

    
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
