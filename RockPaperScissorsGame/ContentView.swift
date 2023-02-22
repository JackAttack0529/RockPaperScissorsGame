//
//  ContentView.swift
//  RockPaperScissorsGame
//
//  Created by Jack Hyde on 2/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            // Using "ignoreSafeArea" allows for the background color to take up the entire screen
            Color.blue.ignoresSafeArea()
            
            VStack {
                Text("ROCK PAPER SCISSORS GAME")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Text("Select Rock, Paper, Or Scissors to start the game")
                HStack{
                    Button{
                        print("Button clicked!")
                    } label: {
                        
                        // Using .system(size: Int) allows for a custom size to be set for an element/view
                        Text("🪨")
                            .font(.system(size:75))
                    }
                    
                    Button{
                        print("Button clicked!")
                    } label: {
                        Text("📄")
                            .font(.system(size:75))
                    }
                    
                    Button{
                        print("Button clicked!")
                    } label: {
                        Text("✂️")
                            .font(.system(size:75))
                    }
                        
                }
                
                HStack{
                    VStack{
                        Text("🪨")
                            .font(.system(size:60))
                            .padding(.bottom, 10.0)
                        Text("Player")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        Text("0")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    
                    VStack{
                        Text("🪨")
                            .font(.system(size:60))
                            .padding(.bottom, 10.0)
                        Text("CPU")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                }
                    
                    Button{
                        print("Button clicked!")
                    } label: {
                        Text("RESTART GAME")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.all, 10.0)
                            .border(Color.white, width: 7)
                        // Corner Radius determines how round the corners of an element/view are
                            .cornerRadius(10.0)
                    }

                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
