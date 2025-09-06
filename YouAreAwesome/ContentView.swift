//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Abraham Gonzalez on 8/31/25.
//

import SwiftUI

struct ContentView: View {
    @State private var  message = ""
    @State private var image = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
        
        
        
        VStack {
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle({
                    switch imageNumber % 2 {
                    case 1 : return Color.blue
                    default: return Color.red
                    }
                }())
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.15), value: message)

            
            Spacer()
            
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius:30)
                .frame(width: 200, height: 200)
                .animation(.default, value: image)
            
            Spacer()
            
            Button("Show Message") {
                let message0 = "Yankees —The kings of baseball with 27 rings, and yes, everyone else is chasing us"
                let message1 = "Red Sox — Defined mostly by their obsession with beating the Yankees (sometimes it works)"
                let message2 = "Orioles — Cute little up-and-comers who still get nervous when they visit the Bronx"
                let message3 = "Blue Jays — Canada’s best at baseball… but that’s a pretty short list"
                let message4 = "Rays — A team that wins games in front of tens of fans and thousands of empty seats"
                let message5 = "Mets – Our noisy neighbors who swear “this year is different” every year."
                let message6 = "Marlins – Have two World Series titles but barely enough fans to fill a subway car."
                let message7 = "Phillies – Tough city, loud fans, and they still hate us because we beat them in 2009."
                let message8 = "Nationals – Won one title and then disappeared faster than their star players."
                let message9 = "Guardians – Known for great pitching, but their bats usually fall asleep in October."
                
                let messageList = [message0,
                                   message1,
                                   message2,
                                   message3,
                                   message4,
                                   message5,
                                   message6,
                                   message7,
                                   message8,
                                   message9]
                
                message = messageList[messageNumber]
                messageNumber += 1
                if messageNumber == messageList.count {
                    messageNumber = 0
                }
                
                image = "image\(imageNumber)"
                if imageNumber >= 9 {
                    imageNumber = 0
                }
                else {
                    imageNumber += 1
                }
            }
            
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
