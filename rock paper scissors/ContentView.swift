//
//  ContentView.swift
//  rock paper scissors
//
//  
//

import SwiftUI

struct ContentView: View {
   
   @State var hand1 = "icon1"
   @State var hand2 = "icon2"
   @State var scorePlayer1 = 0
   @State var scorePlayer2 = 0
    
    var body: some View {
        
        
        
    ZStack{
            
        VStack{
           
            Spacer()
            Text("Rock,Paper,Scissors")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            
            HStack{
                
                Image(hand1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                
                Image(hand2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                
            }
            
            
            Button(action: {
                
                // shoot the hands
                
                let shootRand = Int.random(in: 1...3)
                
                let shootRand2 = Int.random(in: 1...3)
                
                hand1 = "icon" + String(shootRand)
                
                hand2 = "icon" + String(shootRand2)
                
              
                if (shootRand == 1 && shootRand2 == 3) || (shootRand == 2 && shootRand2 == 1) || (shootRand == 3 && shootRand2 == 2){
                    
                    scorePlayer1 += 1
                }
                if (shootRand2 == 1 && shootRand == 3) || (shootRand2 == 2 && shootRand == 1) || (shootRand2 == 3 && shootRand == 2){
                    
                    scorePlayer2 += 1
                }
                 else if shootRand == shootRand2
                {
                     scorePlayer1 += 0
                     scorePlayer2 += 0
                 }
        
                
            }, label: {
                
                Image("shoot")
                    .resizable()
                    .aspectRatio(contentMode: .fit
                    )
                    .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing], 100.0/*@END_MENU_TOKEN@*/)
            })
          
            Spacer()
            
            HStack{
                
                Spacer()
            VStack{
                Text("Player1")
                    .fontWeight(.bold)
                    .padding(.bottom)
                   
                Text(String(scorePlayer1))
                    .fontWeight(.bold)
                
                }
                
                Spacer()
                
                Button(action: {
                    
                    scorePlayer1 = 0
                    scorePlayer2 = 0
                    
                }, label: {
                    
                    Text("Restart")
                })
                
                Spacer()
            VStack{
                Text("Player2")
                    .fontWeight(.bold)
                    .padding(.bottom)
           
                Text(String(scorePlayer2))
                    .fontWeight(.bold)
                }
                
                Spacer()
                
                
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
