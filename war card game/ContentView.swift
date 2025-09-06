//
//  ContentView.swift
//  war card game
//
//  Created by siba jamal on 07/07/2025.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card12"
    @State var cpuCard = "card14"
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea(edges: .all)
            VStack {
                Spacer()
                Image("logo").resizable()
                    .aspectRatio(contentMode: .fit).frame(width: 150, height:150)
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }.padding()
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 10).fill(Color.white).frame(width: 100, height: 80)
                   VStack{
                       Button(action: {
                            deal()
                        })
                        {Image("button").resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height:70)
                        }
                   }

                    }
         
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(.bottom,10)
                        Text(String(playerScore)).font(.largeTitle)
                    }.padding()
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).padding(.bottom,10)
                        Text(String(cpuScore)).font(.largeTitle)
                    }.padding()
                    Spacer()
                }.foregroundColor(.white)
                
                Spacer()
                
                }
            .padding()
        }

    }
    func deal (){
       var  playerCardValue = Int.random(in: 2...14)
        var  cpuCardValue = Int.random(in: 2...14)
        playerCard = "card"+String(playerCardValue)
       cpuCard = "card"+String(cpuCardValue)
        
        if playerCardValue>cpuCardValue{
            playerScore+=1
        } else { cpuScore+=1}
//        if playerCard+cpuScore == 16{
//            //kgkg
//        }
    }
}

#Preview {
    ContentView()
}
