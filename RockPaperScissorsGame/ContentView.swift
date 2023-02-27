//
//  ContentView.swift
//  RockPaperScissorsGame
//
//  Created by Jack Hyde on 2/22/23.
//

import SwiftUI



struct ContentView: View {
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var rockValue = 1
    @State var paperValue = 2
    @State var scissorsValue = 3
    @State var playerNumber = 0
    @State var playerImage = 1
    @State var cpuImage = 1
    @State var EmojiP = "🪨"
    @State var EmojiC = "🪨"
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
                Spacer()
                
                Text("Select Rock, Paper, Or Scissors to start the game")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .multilineTextAlignment(.center)
                Spacer()
                HStack{
                    Spacer()
                    Button{
                        let playerNumber = 1
                        let cpuRandom = Int.random(in: 1...3)
                        if (playerNumber == 1 && cpuRandom != 1 && cpuRandom != 2 && cpuRandom == 3){
                            playerScore = playerScore + 1
                        } else if (cpuRandom == 2 && cpuRandom != 1 && cpuRandom != 3){
                            cpuScore = cpuScore + 1
                        } else if (cpuRandom == playerNumber){
                            cpuScore = cpuScore + 0
                            playerScore = playerScore + 0
                        }
                        
                        if (playerNumber == 1){
                            EmojiP = "🪨"
                        }
                        
                        if (cpuRandom == rockValue){
                            EmojiC = "🪨"
                        } else if (cpuRandom == paperValue){
                            EmojiC = "📄"
                        } else if (cpuRandom == scissorsValue){
                            EmojiC = "✂️"
                        }
                    } label: {
                        
                        // Using .system(size: Int) allows for a custom size to be set for an element/view
                        Text("🪨")
                            .font(.system(size:75))
                        
                    }
                    Spacer()
                    Button{
                        let playerNumber = 2
                        let cpuRandom = Int.random(in: 1...3)
                        if (playerNumber == 2 && cpuRandom != 3 && cpuRandom == 1){
                            playerScore = playerScore + 1
                        } else if (cpuRandom == 3 && cpuRandom != 1 && cpuRandom != 2 && cpuRandom == 3){
                            cpuScore = cpuScore + 1
                        } else if (cpuRandom == playerNumber){
                            cpuScore = cpuScore + 0
                            playerScore = playerScore + 0
                        }
                        if (playerNumber == 2){
                            EmojiP = "📄"
                        }
                        
                        if (cpuRandom == rockValue){
                            EmojiC = "🪨"
                        }else if (cpuRandom == paperValue){
                            EmojiC = "📄"
                        }else if (cpuRandom == scissorsValue){
                            EmojiC = "✂️"
                        }
                        
                    } label: {
                        Text("📄")
                            .font(.system(size:75))
//                        let cpuRandom = Int.random(in: 1...3)
                    }
                    Spacer()
                    Button{
                        let playerNumber = 3
                        let cpuRandom = Int.random(in: 1...3)
                        if (playerNumber == 3 && cpuRandom != 1 && cpuRandom != 3){
                            playerScore = playerScore + 1
                        } else if (cpuRandom == 1 && cpuRandom != 2 && cpuRandom != 3){
                            cpuScore = cpuScore + 1
                        } else if (cpuRandom == playerNumber){
                            cpuScore = cpuScore + 0
                            playerScore = playerScore + 0
                        }
                        if (playerNumber == 3){
                            EmojiP = "✂️"
                        }
                        
                        if (cpuRandom == rockValue){
                            EmojiC = "🪨"
                        } else if (cpuRandom == paperValue){
                            EmojiC = "📄"
                        } else if (cpuRandom == scissorsValue){
                            EmojiC = "✂️"
                        }
                    } label: {
                        Text("✂️")
                            .font(.system(size:75))
//                        let cpuRandom = Int.random(in: 1...3)
                    }
                    
                    Spacer()
                        
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        
                        Text(EmojiP)
                            .font(.system(size:60))
                            .padding(.bottom, 10.0)
                        Text("Player")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text(EmojiC)
                            .font(.system(size:60))
                            .padding(.bottom, 10.0)
                        Text("CPU")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                    
                    Button{
                        playerScore = playerScore - playerScore
                        cpuScore = cpuScore - cpuScore
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
