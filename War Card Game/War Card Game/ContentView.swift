//
//  ContentView.swift
//  War Card Game
//
//  Created by Sandip Kumar Dey on 17/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card10"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                                
                Button{
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle)
                        
                    }
                    Spacer()
                    
                }.foregroundColor(.white)
                Spacer()
                
                
            }
        }
        
        
        
    }
    
    func deal(){
        // Randomize the players card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the cpus card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //
        if (playerCardValue > cpuCardValue){
            
            // Add 1 to player score
            playerScore += 1
        }
            
        //
        if (cpuCardValue > playerCardValue){
            
            // Add 1 to cpu score
            cpuScore += 1
            // Update the scores
        }

    }
}
    
    
struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

